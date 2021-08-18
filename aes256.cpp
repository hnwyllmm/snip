static const unsigned char iv[] = "0123456789012345";

AES::AES() 
{
  EVP_CIPHER_CTX_init(&_cipher_ctx);
}

AES::~AES() 
{
  EVP_CIPHER_CTX_cleanup(&_cipher_ctx);
}

int AES::reset()
{
  EVP_CIPHER_CTX_cleanup(&_cipher_ctx);
  EVP_CIPHER_CTX_init(&_cipher_ctx);
  return OMS_OK;
}

int AES::encrypt(const char* key, const char* plain_text, int plain_text_len, char** encrypted, int& encrypted_len)
{
  unsigned char iv_copy[sizeof(iv)];
  memcpy(iv_copy, iv, sizeof(iv));
  int ret = EVP_EncryptInit_ex(&_cipher_ctx, EVP_aes_256_cbc(), nullptr, (const unsigned char*)key, iv_copy);
  if (ret != 1) {
    LOG_ERROR << "Failed to init encrypt, return=" << ret;
    return OMS_FAILED;
  }

  const int buffer_len = plain_text_len + EVP_MAX_BLOCK_LENGTH;
  unsigned char* buffer = (unsigned char*)malloc(buffer_len);
  if (nullptr == buffer) {
    LOG_ERROR << "Failed to alloc memory. size=" << buffer_len;
    return OMS_FAILED;
  }

  int used_buffer_len = 0;
  ret = EVP_EncryptUpdate(&_cipher_ctx, buffer, &used_buffer_len, (const unsigned char*)plain_text, plain_text_len);
  if (ret != 1) {
    LOG_ERROR << "Failed to encrypt. returned=" << ret;
    free(buffer);
    return OMS_FAILED;
  }

  int final_buffer_len = 0;
  ret = EVP_EncryptFinal_ex(&_cipher_ctx, buffer + used_buffer_len, &final_buffer_len);
  if (ret != 1) {
    LOG_ERROR << "Failed to encrypt(final). returned=" << ret;
    free(buffer);
    return OMS_FAILED;
  }

  *encrypted = (char*)buffer;
  encrypted_len = used_buffer_len + final_buffer_len;

  return OMS_OK;
}

int AES::decrypt(const char* key, const char* encrypted, int encrypted_len, char** plain_text, int& plain_text_len)
{
  unsigned char iv_copy[sizeof(iv)];
  memcpy(iv_copy, iv, sizeof(iv));
  int ret = EVP_DecryptInit_ex(&_cipher_ctx, EVP_aes_256_cbc(), nullptr, (const unsigned char*)key, iv_copy);
  if (ret != 1) {
    LOG_ERROR << "Failed to init encrypt, return=" << ret;
    return OMS_FAILED;
  }

  unsigned char* buffer = (unsigned char*)malloc(encrypted_len);
  if (nullptr == buffer) {
    LOG_ERROR << "Failed to alloc memory. size=" << encrypted_len;
    return OMS_FAILED;
  }
  memset(buffer, 0, encrypted_len);

  int used_buffer_len = 0;
  ret = EVP_DecryptUpdate(&_cipher_ctx, buffer, &used_buffer_len, (const unsigned char*)encrypted, encrypted_len);
  if (ret != 1) {
    LOG_ERROR << "Failed to decrypt. return=" << ret;
    free(buffer);
    return OMS_FAILED;
  }

  int final_buffer_len = 0;
  ret = EVP_DecryptFinal_ex(&_cipher_ctx, buffer + used_buffer_len, &final_buffer_len);
  if (ret != 1) {
    LOG_ERROR << "Failed to decrypt(final). return=" << ret;
    free(buffer);
    return OMS_FAILED;
  }

  *plain_text = (char*)buffer;
  plain_text_len = used_buffer_len + final_buffer_len;
  return OMS_OK;
}
