# Ubuntu image with all python libs necessary
FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt install -y apt-utils && \
    apt install -y clang gcc libc-dev vim python3.7 python3.7-dev python3 python3-dev python3-pip git libfreetype6-dev && \
    python3.7 -m pip install discord requests bs4 pytz && \
    python3.7 -m pip install numpy -I && \
    python3.7 -m pip install matplotlib

ADD . /
CMD [ "sh", "/start_bot.sh" ]
