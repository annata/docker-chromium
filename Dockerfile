FROM jlesage/baseimage-gui:debian-11

ENV TZ Asia/Shanghai
ENV APP_NAME="chromium"
ENV DISPLAY_WIDTH="1000"
ENV DISPLAY_HEIGHT="700"
# ENV ENABLE_CJK_FONT 1

# RUN echo 'deb https://mirrors.ustc.edu.cn/debian/ bullseye main\ndeb https://mirrors.ustc.edu.cn/debian/ bullseye-backports main\ndeb https://mirrors.ustc.edu.cn/debian/ bullseye-updates main\ndeb https://mirrors.ustc.edu.cn/debian/ bullseye-proposed-updates main\ndeb https://mirrors.ustc.edu.cn/debian-security/ bullseye-security main' > /etc/apt/sources.list

RUN apt-get update &&  apt install -y chromium fonts-wqy-zenhei

RUN echo '#!/bin/sh\nexport HOME=/config\nexec /usr/bin/chromium' > /startapp.sh && chmod +x /startapp.sh