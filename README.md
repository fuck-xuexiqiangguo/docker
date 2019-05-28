# Fuck 学习强国 Docker 版使用说明

## 在 Dockerfile 所在目录构建镜像

```sh
docker build -t fuck-xuexiqiangguo-docker .
```

## 在后台运行镜像

```sh
docker run -d --name xuexi fuck-xuexiqiangguo-docker
```

## 从日志中查看二维码，扫码登陆

```sh
docker logs -f xuexi
```

## 如果不想扫码，直接使用用户名密码，修改 script.sh 的最后一行为以下内容，然后重新 docker build & run

```sh
/app/Fuck学习强国 --headless --username=13999999999 --passwd="123456"
```
