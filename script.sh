#!/bin/sh

# 运行 xvfb
Xvfb -ac -screen scrn 1280x2000x24 :9.0 &

# 更新
wget -nv -O /app/resources/app.asar https://github.com/fuck-xuexiqiangguo/Fuck-XueXiQiangGuo/raw/master/app.asar

# 运行程序
/app/Fuck学习强国 --headless
