FROM alpine

RUN apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ bird gettext
COPY bird.conf.tpl /etc/bird.conf.tpl
COPY entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh
ENTRYPOINT [ "./entrypoint.sh" ]