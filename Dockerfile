FROM land007/node:latest

MAINTAINER Yiqiu Jia <yiqiujia@hotmail.com>

RUN . $HOME/.nvm/nvm.sh && cd / && npm install simple-socks
ADD node/server.js /node_/server.js
EXPOSE 1080/tcp

ENV USERNAME=land007\
	PASSWORD=1234567

#RUN cd /node_ && git clone https://github.com/land007/simple-socks.git

#docker build -t land007/node-socks:latest .
#> docker buildx build --platform linux/amd64,linux/arm64/v8,linux/arm/v7 -t land007/node-socks --push .
#docker run --rm -it --name node-socks -p 1080:1080 land007/node-socks:latest
#curl --socks5 127.0.0.1:1080 -U land007:1234567 https://tool.lu/ip/
