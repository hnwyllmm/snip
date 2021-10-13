# 相关资料

[证书与签名（一）：数字签名是什么](https://blog.csdn.net/yangdiao127/article/details/70336467)

[openssl 学习之SSL/TLS](https://blog.csdn.net/kkxgx/article/details/12868181)

[/docs/man1.0.2/man3/SSL_CTX_set_verify.html (openssl.org)](https://www.openssl.org/docs/man1.0.2/man3/SSL_CTX_set_verify.html)

[openssl自签名CA证书](https://www.jianshu.com/p/04902b11a5f7)

[OpenSSL - error 18 at 0 depth lookup:self signed certificate](https://www.e-learn.cn/topic/733531)

[openssl 查看证书](https://www.jianshu.com/p/f5f93c89155e)

# 相关概念
- 证书
- 请求文件 
- 密钥文件


# 证书生成步骤

1. 生成密钥文件(.key)
2. 去掉密码(看需求)
3. 生成请求文件(.csr)
4. 生成CA证书(.crt)

对普通证书，还需要生成CA证书之后，对其签名

# 整体步骤（生成CA证书、服务端证书、客户端证书）

## 生成CA证书

1. 生成密钥文件

```shell
openssl genrsa -des3 -out ca.encrypted.key 2048
```
这一步需要输入密码

2. 去掉密码

```shell
openssl rsa -in ca.encrypted.key -out ca.key
```
这一步需要输入上一步设置的密码

3. 生成请求文件(.csr)
```shell
openssl req -new -key  ca.key -out ca.csr
```
这一步会让输入一堆信息

比如

```txt
openssl req -new -key  server.3.key -out server.4.csr
You are about to be asked to enter information that will be incorporated
into your certificate request.
What you are about to enter is what is called a Distinguished Name or a DN.
There are quite a few fields but you can leave some blank
For some fields there will be a default value,
If you enter '.', the field will be left blank.
-----
Country Name (2 letter code) [XX]:CN
State or Province Name (full name) []:Zhejiang
Locality Name (eg, city) [Default City]:Hangzhou
Organization Name (eg, company) [Default Company Ltd]:ob
Organizational Unit Name (eg, section) []:ob
Common Name (eg, your name or your server's hostname) []:
Email Address []:

Please enter the following 'extra' attributes
to be sent with your certificate request
A challenge password []:
An optional company name []:
```

> NOTE: 后面生成服务端证书的时候，输入的信息会不同，特别是 Common Name 不能相同

4. 生成证书文件(.crt)

```shell
openssl x509 -req -in ca.csr -signkey ca.key -out ca.crt
```
输出内容
```txt
openssl x509 -req -in ca.csr -signkey ca.key -out ca.crt
Signature ok
subject=/C=CN/ST=Zhejiang/L=Hangzhou/O=Antgroup/OU=ob # 这里的信息只是示例
Getting Private key
```

## 生成服务端证书
与生成CA证书类似
1. 生成密钥文件
2. 去掉密码
3. 生成csr请求文件
    注意，这里也会让输入一堆信息，Common Name 不要与CA证书中输入的相同，否则会出现 `error 18 at 0 depth lookup:self signed certificate` 的错误

4. 使用CA证书签发证书

```shell
openssl x509 -req -in server.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out server.crt
```
输出示例
```txt
$openssl x509 -req -in server.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out server.crt
Signature ok
subject=/C=CN/ST=Zhejiang/L=Hangzhou/O=Antgroup/OU=ob/CN=100.88.121.143/emailAddress=wangyunlai.wyl@antgroup.com
Getting CA Private Key
```
5. 对证书做校验

```shell
openssl verify -CAfile ca.crt server.crt
```
如果成功的话，会输出
```txt
$openssl verify -CAfile ca.crt server.crt
server.crt: OK
```
失败的话会输出错误信息
比如
```txt
$openssl verify -CAfile ca.3.crt server.crt
server.crt: C = CN, ST = ZheJiang, L = HangZhou, O = AntFin, OU = OB, CN = k08j15264.eu95sqa, emailAddress = wangyunlai.wyl@antgroup.com
error 18 at 0 depth lookup:self signed certificate
OK
```

## 客户端证书
客户端证书可以用相同的方法生成

## 程序中需要使用的文件
ca.crt
server.crt
server.key



# 测试程序

参考 server.cpp和client.cpp

校验相关的逻辑参考 其中的函数  `verify_callback`

编译：

```bash
g++ -g  -lssl -lcrypto client.cpp -o client
g++ -g  -lssl -lcrypto server.cpp -o server
```



运行：

启动服务端 `./server & `

启动客户端 `./client`

服务端运行输出示例

```txt
$./server
socket start...
SSL starting...
SSL connection using AES256-GCM-SHA384
SSL read return 11
hello world
will exit
```



客户端运行输出示例

```txt
$./client
socket starting...
ssl begin...
SSL connection using AES256-GCM-SHA384
read: hello world
```

# 其它
- 查看key信息
```
openssl rsa -noout -text -in myserver.key
```

- 查看CSR信息
```shell
openssl req -noout -text -in myserver.csr
```

- 查看证书信息
```shell
openssl x509 -noout -text -in ca.crt
```

- SSL/TLS 版本

  SSL/TLS 有一段历史。值得关注的是TLSv1.2 到 TLSv1.3。TLSv1.2和以前的版本，目前发现都是有漏洞的。而 openssl 1.1.0 开始才只是TLSv1.3，OpenSSL低一点的版本是不能自动升级为TLSv1.3的，要改代码。

- OpenSSL相关

  经过测试发现，OpenSSL后台并没有启动额外线程去维护ssl通讯相关的链路，比如心跳。
