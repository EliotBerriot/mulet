FROM ubuntu:14.04
MAINTAINER Eliot Berriot <contact@eliotberriot.com>

RUN mkdir /app
RUN apt-get update && apt-get install -y wget bzip2 \
    && apt-get install -y `apt-cache depends firefox | awk '/Depends:/{print$2}'`

RUN wget -O /tmp/mulet.tar.bz2 https://queue.taskcluster.net/v1/task/Tg4Sld58RwmUbJnVPwBXvg/runs/0/artifacts/public%2Fbuild%2Ftarget.tar.bz2 \
    && tar jxf /tmp/mulet.tar.bz2 -C /app/ \
    && rm /tmp/mulet.tar.bz2

WORKDIR /app/firefox
ADD ./mulet /usr/local/bin/mulet
RUN chmod +x /usr/local/bin/mulet

ENV XAUTHORITY=/tmp/xauthority QT_X11_NO_MITSHM=1

ENTRYPOINT ["mulet"]
