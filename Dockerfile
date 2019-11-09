# Ubuntu image with all python libs necessary
FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install -y apt-utils
RUN apt install -y clang gcc libc-dev
RUN apt install -y vim python3.7 python3.7-dev python3 python3-dev python3-pip
RUN python3.7 -m pip install discord requests bs4
RUN python3.7 -m pip install numpy -I
RUN apt install -y libfreetype6-dev
RUN python3.7 -m pip install matplotlib
RUN python3.7 -m pip install pytz
RUN apt install -y git

ADD . /
CMD [ "sh", "/start_bot.sh" ]

#RUN git clone https://github.com/zedchance/blues_bot.py.git
#RUN rm -rf blues_bot.py/cogs/embed_help
#RUN git clone https://github.com/zedchance/embed_help.git blues_bot.py/cogs/embed_help
