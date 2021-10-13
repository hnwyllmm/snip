#include <sys/socket.h>
#include <sys/types.h>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <stdio.h>
#include <stdlib.h>
#include <memory.h>
#include <errno.h>
#include <string.h>
#include <unistd.h>

#include <openssl/rsa.h>
#include <openssl/crypto.h>
#include <openssl/ssl.h>
#include <openssl/err.h>

void print_openssl_error() {
  unsigned long last_error = ERR_get_error();
  char error[1024];
  ERR_error_string_n(last_error, error, sizeof(error));
  printf("%s\n", error);
}
int set_reuse_addr(int sock)
{
  int opt = 1;
  int ret = setsockopt(sock, SOL_SOCKET, SO_REUSEADDR, &opt, sizeof(opt));
  if (ret != 0) {
    printf("Failed to set socket in 'REUSE_ADDR' mode. error=%s\n", strerror(errno));
    return -1;
  }
  return 0;
}

int verify_callback(int preverify_ok, X509_STORE_CTX *ctx) {
  if (preverify_ok) {
    return preverify_ok;
  }
  X509 *cert = X509_STORE_CTX_get_current_cert(ctx);
  int err = X509_STORE_CTX_get_error(ctx);
  int depth = X509_STORE_CTX_get_error_depth(ctx);

  char buf[256];
  X509_NAME_oneline(X509_get_subject_name(cert), buf, sizeof(buf));
  printf("error=%d:%s,depth=%d,cert error: %s\n", err, X509_verify_cert_error_string(err), depth, buf);
  return 1;
}
int main(void) {
  const int server_port = 1234;
  const char * cert_file = "server.3.crt";
  const char * key_file = "server.3.key";
  const char * ca_cert_file = "ca.3.crt";
  
  SSL_load_error_strings();
  OpenSSL_add_ssl_algorithms();
  //const SSL_METHOD * ssl_method = TLS_server_method(); // 改成这个需要openssl 1.1.0 以上版本才支持
  const SSL_METHOD * ssl_method = SSLv23_server_method(); // 低版本的openssl 使用这个，但是不支持TLSv1.3协议
  SSL_CTX * ssl_ctx = SSL_CTX_new(ssl_method);
  SSL_CTX_set_verify(ssl_ctx, SSL_VERIFY_PEER, verify_callback); // verify_callback 是证书校验的回调函数，可以参考openssl 官网
  //SSL_CTX_set_verify(ssl_ctx, SSL_VERIFY_NONE, verify_callback); // 如果使用SSL_VERIFY_NONE 就不会对客户端做校验了
  int ret = SSL_CTX_load_verify_locations(ssl_ctx, ca_cert_file, NULL);
  if (ret <= 0) {
    printf("SSL_CTX_load_verify_locations return %d\n", ret);
    print_openssl_error();
    return 1;
  }

  ret = SSL_CTX_use_certificate_file(ssl_ctx, cert_file, SSL_FILETYPE_PEM);
  if (ret <= 0) {
    printf("SSL_CTX_use_certificate_file return %d\n", ret);
    print_openssl_error();
    return 1;
  }
  ret = SSL_CTX_use_PrivateKey_file(ssl_ctx, key_file, SSL_FILETYPE_PEM);
  if (ret <= 0) {
    printf("SSL_CTX_use_PrivateKey_file return %d\n", ret);
    print_openssl_error();
    return 1;
  }
  ret = SSL_CTX_check_private_key(ssl_ctx);
  if (ret <= 0) {
    printf("SSL_CTX_check_private_key return %d\n", ret);
    print_openssl_error();
    return 1;
  }

  printf("socket start...\n");
  
  int listen_fd = socket(PF_INET, SOCK_STREAM, 0);
  struct sockaddr_in sa_serv;
  memset(&sa_serv, 0, sizeof(sa_serv));
  sa_serv.sin_family = PF_INET;
  sa_serv.sin_addr.s_addr = INADDR_ANY;
  sa_serv.sin_port = htons(server_port);
  
  set_reuse_addr(listen_fd);

  ret = bind(listen_fd, (struct sockaddr *)&sa_serv, sizeof(sa_serv));
  if (ret != 0) {
    printf("Failed to bind %d error=%s\n", server_port, strerror(errno));
    return 1;
  }

  ret = listen(listen_fd, 10);
  if (ret < 0) {
    printf("Failed to listen. error=%s\n", strerror(errno));
    return 1;
  }

  struct sockaddr_in sa_client;
  socklen_t client_addr_len = sizeof(sa_client);
  int client_fd = accept(listen_fd, (struct sockaddr *)&sa_client, &client_addr_len);
  if (client_fd < 0) {
    printf("Failed to accept. error=%s\n", strerror(errno));
    return 1;
  }

  printf("SSL starting...\n");
  
  SSL *ssl = SSL_new(ssl_ctx);
  SSL_set_fd(ssl, client_fd);
  ret = SSL_accept(ssl);
  if (ret <= 0) {
    printf("ssl accept failed.\n");
    print_openssl_error();
    return 1;
  }

  printf ("SSL connection using %s\n", SSL_get_cipher (ssl));

  char buf[1024] = {0};
  ret = SSL_read(ssl, buf, sizeof(buf));
  printf("SSL read return %d\n", ret);
  printf("%s\n", buf);

  if (ret > 0) {
    ret = SSL_write(ssl, buf, ret);
    if (ret <= 0) {
      printf("SSL write return %d\n", ret);
    }
  }

  printf("will exit\n");
  SSL_free(ssl);
  close(listen_fd);
  close(client_fd);
  SSL_CTX_free(ssl_ctx);
  
  return 0;
}
