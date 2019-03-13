FROM nginx:1.15

RUN mkdir -p /opt
COPY boot.sh nginx.conf.tpl /opt/

WORKDIR /opt
CMD ["/opt/boot.sh"]
