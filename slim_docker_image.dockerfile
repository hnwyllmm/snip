FROM miniob-test-2022:v19-tmp as initial
FROM centos:centos7

COPY --from=initial / /
WORKDIR /root

# 直接在正在运行的容器中修改东西，然后再生成镜像，会导致镜像很大，甚至无法导出，而且没有直接的方法给镜像瘦身。
# 这时就可以使用上面的内容重新做一个镜像
# 注意第二行的基础镜像应该与源镜像的基础镜像保持一致。
