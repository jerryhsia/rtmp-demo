FROM jerry9916/centos:8

WORKDIR /root

COPY entrypoint.sh /root/
COPY install.sh nginx.conf *.gz /tmp/

RUN /tmp/install.sh

ENTRYPOINT ["/root/entrypoint.sh"]