## chromium in docker

### 使用以下项目:

[https://github.com/jlesage/docker-baseimage-gui](https://github.com/jlesage/docker-baseimage-gui "https://github.com/jlesage/docker-baseimage-gui")                                       


### 版本：

   chromium

### 注意:

- 所以运行的时候可以加`--rm`停止以后自动删除容器


### docker命令行设置：

1. 下载镜像

       docker pull annat/chromium


2. 
- 创建并运行 qq容器(创建并运行以后不需要执行第三步运行)
 
 `docker run --name chromium -p 5800:5800 -p 5900:5900 -d annat/chromium`

- 只创建容器

 `docker create --name chromium -p 5800:5800 -p 5900:5900 -d annat/chromium`

3. 运行

- docker start chromium
- 用浏览器打开`127.0.0.1:5800`即可使用,需要使用vnc可用5900端口

4. 停止

       docker stop chromium

5. 删除容器

       docker rm  chromium

6. 删除镜像

       docker rmi annat/chromium

### 变量:

|参数|说明|
|:-|:-|
| `--rm` | 一旦容器停止自动删除,按需可不加 |
| `--name=chromium` |容器名|
| `-p 5800:5800` |Web界面访问端口,[ip:5800](ip:5800)|
| `-p 5900:5900` |VNC协议访问端口.如果未使用VNC客户端,则为可选,[ip:5900](ip:5900)|
| `-e VNC_PASSWORD=VNC密码` |VNC密码|
