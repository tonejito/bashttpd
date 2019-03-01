FROM	alpine:latest

MAINTAINER	tonejito
LABEL		vendor=local

WORKDIR	/srv

RUN	apk add bash socat
#RUN	apk add bash netcat-openbsd

COPY	bashttpd* ./

USER	nobody
CMD	["socat","TCP4-LISTEN:8080,fork","EXEC:./bashttpd"]
#CMD	["netcat","-lp","8080","-e","./bashttpd"]
