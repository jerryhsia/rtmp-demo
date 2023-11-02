#!/bin/bash

cd /tmp

yum install -y pcre-devel openssl-devel

tar -xf nginx-1.22.0.tar.gz
tar -xf nginx-rtmp-module-1.2.2.tar.gz

cd nginx-1.22.0

./configure --prefix=/usr/local/nginx --add-module=../nginx-rtmp-module-1.2.2 --with-http_ssl_module  --with-http_gzip_static_module --with-http_ssl_module --with-http_stub_status_module --with-stream --with-http_v2_module

make && make install

cp /tmp/nginx.conf /usr/local/nginx/conf/nginx.conf

rm -rf /tmp/*
yum clean all