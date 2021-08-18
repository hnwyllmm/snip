/**
 * AES是对称加密算法。加密解密时都需要提供密钥(key)
 * 这里使用的是OpenSSL 库，在调用OpenSSL接口时需要提供一个16字节的向量值（参考aes256.cpp)
 */
class AES {
public:
  AES();
  ~AES();

  int reset();

  int encrypt(const char* key, const char* plain_text, int plain_text_len, char** encrypted, int& encrypted_len);
  int decrypt(const char* key, const char* encrypted, int encrypted_len, char** plain_text, int& plain_text_len);

private:
  EVP_CIPHER_CTX _cipher_ctx;
};
