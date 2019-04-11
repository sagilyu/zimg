# zimg-3.2 docker
FROM ubuntu:16.04
MAINTAINER sagilyu@163.com

LABEL Description="zimg-3.2 docker image; "
# install zimg dependence lib
RUN apt-get update && apt-get install --no-install-recommends -y \
	openssl \
	libevent-dev \
	libjpeg-dev \
	libgif-dev \
	libpng-dev \
	libwebp-dev \
	libmagickcore-dev \
	libmagickwand-dev \
	libmemcached-dev \
	&& rm -rf /var/lib/apt/lists/*

# set zimg env
WORKDIR /usr/bin/zimg
ADD zimg.tar /usr/bin/zimg

#
EXPOSE 4869
CMD ["./zimg","conf/zimg.lua"]