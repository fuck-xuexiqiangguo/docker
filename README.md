# 使用说明

# 在Dockerfile 所在目录构建镜像
> docker build -t fuck-xuexiqiangguo-docker .

# 在后台运行镜像
> docker run -d --name xuexi fuck-xuexiqiangguo-docker

# 从日志中查看二维码，扫码登陆
> docker logs -f xuexi

# 如果不想扫码，直接使用用户名密码，修改script.sh的最后一行为以下内容，然后重新docker build & run
> /app/Fuck学习强国 --headless --username=13999999999 --passwd="123456"
