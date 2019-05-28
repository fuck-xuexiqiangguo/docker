FROM ubuntu:18.04

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --fix-missing  \
        wget \
        unzip \
        libgtk-3-0 \
        xvfb \
        libxss1 \
        libnss3 \
        libasound2

ENV DISPLAY :9.0

RUN wget -O /fuck-xuexiqiangguo.zip https://github.com/fuck-xuexiqiangguo/Fuck-XueXiQiangGuo/raw/master/Fuck学习强国-linux.zip && \
    unzip -q -d /app/ fuck-xuexiqiangguo.zip && \
    rm /fuck-xuexiqiangguo.zip && \
    chmod +x /app/Fuck学习强国

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /app/

COPY script.sh /
RUN chmod +x /script.sh

CMD ["/script.sh"]
