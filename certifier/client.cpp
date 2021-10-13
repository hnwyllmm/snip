#include <sys/socket.h>
#include <sys/types.h>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <stdio.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>

#include <openssl/rsa.h>
#include <openssl/crypto.h>
#include <openssl/ssl.h>
#include <openssl/rand.h>
#include <openssl/err.h>

void print_openssl_error() {
  unsigned long last_error = ERR_get_error();
  char error[1024];
  ERR_error_string_n(last_error, error, sizeof(error));
  printf("%s.\n", error);
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
  printf("cert error: %s\n", buf);
  return 1;
}

int main(void) {
  int server_port = 1234;
  const char *server_host = "127.0.0.1";

  const char *cert_file = "client.3.crt";
  const char *key_file = "client.3.key";
  const char *ca_cert= "ca.3.crt";
  
  OpenSSL_add_ssl_algorithms();
  SSL_load_error_strings();
  ERR_load_ERR_strings();
  ERR_load_crypto_strings();
  
  //const SSL_METHOD * ssl_method = TLS_client_method();
  const SSL_METHOD * ssl_method = SSLv23_client_method();
  SSL_CTX *ssl_context = SSL_CTX_new(ssl_method);
  SSL_CTX_set_verify(ssl_context, SSL_VERIFY_PEER, verify_callback);
  int ret = SSL_CTX_load_verify_locations(ssl_context, ca_cert, NULL);
  if (ret != 1) {
    printf("SSL_CTX_load_verify_locations fail\n");
    print_openssl_error();
    return 1;
  }

  ret = SSL_CTX_use_certificate_file(ssl_context, cert_file, SSL_FILETYPE_PEM);
  if (ret != 1) {
    printf("SSL_CTX_use_certificate_file failed\n");
    print_openssl_error();
    return 1;
  }

  ret = SSL_CTX_use_PrivateKey_file(ssl_context, key_file, SSL_FILETYPE_PEM);
  if (ret != 1) {
    printf("SSL_CTX_use_PrivateKey_file failed\n");
    print_openssl_error();
    return 1;
  }

  ret = SSL_CTX_check_private_key(ssl_context);
  if (ret != 1) {
    printf("SSL_CTX_check_private_key failed\n");
    print_openssl_error();
    return 1;
  }

  int rand_seed[] = {0};
  RAND_seed(rand_seed, sizeof(rand_seed));

  printf("socket starting...\n");
  struct sockaddr_in server_addr;
  memset(&server_addr, 0, sizeof(server_addr));
  server_addr.sin_family = AF_INET;
  server_addr.sin_addr.s_addr = inet_addr(server_host);
  server_addr.sin_port = htons(server_port);

  int client_fd = socket(AF_INET, SOCK_STREAM, 0);
  ret = connect(client_fd, (struct sockaddr *)&server_addr, sizeof(server_addr));
  if (ret != 0) {
     printf("failed to connect to host. error=%s\n", strerror(errno));
    return 1;
  }

  printf("ssl begin...\n");
  
  SSL *ssl = SSL_new(ssl_context);
  SSL_set_fd(ssl, client_fd);
  ret = SSL_connect(ssl);
  if (ret != 1) {
    printf("SSL_connect failed\n");
    print_openssl_error();
    return 1;
  }
    
  printf ("SSL connection using %s\n", SSL_get_cipher (ssl));

  const char buf[] = "hello world";
  ret = SSL_write(ssl, buf, sizeof(buf) - 1);
  if (ret <= 0) {
    printf("SSL_write failed\n");
    print_openssl_error();
    return 1;
  }

  char readbuf[1024] = {0};
  ret = SSL_read(ssl, readbuf, sizeof(readbuf));
  if (ret <= 0) {
    printf("SSL_read failed\n");
    print_openssl_error();
    return 1;
  }
  printf("read: %s\n", readbuf);

  return 0;
}
