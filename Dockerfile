FROM land007/node:latest

MAINTAINER Yiqiu Jia <yiqiujia@hotmail.com>

RUN . $HOME/.nvm/nvm.sh && cd / && npm install simple-socks
ADD node/server.js /node_/server.js
EXPOSE 1080/tcp
#RUN cd /node_ && git clone https://github.com/land007/simple-socks.git

#docker build -t land007/node-socks:latest .
#> docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t land007/node-socks --push .
#docker run --rm -it --name node-socks -p 1080:1080 land007/node-socks:latest bash
