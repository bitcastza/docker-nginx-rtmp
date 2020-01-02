FROM debian:stable-slim

RUN apt-get update -qq && apt-get upgrade -y -qq
RUN apt-get install -qq -y nginx-extras libnginx-mod-rtmp

ADD run.sh /

EXPOSE 1935
EXPOSE 8080

CMD /run.sh
