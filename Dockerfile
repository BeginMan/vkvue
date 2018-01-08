FROM mhart/alpine-node:8
MAINTAINER beginman<xinxinyu2011@163.com>

RUN sed -ie 's/dl-cdn.alpinelinux.org/mirror.tuna.tsinghua.edu.cn/g' /etc/apk/repositories
RUN apk update
RUN apk add --no-cache openrc docker
RUN npm config set registry http://registry.npm.taobao.org/

