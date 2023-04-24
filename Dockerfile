FROM docker:20.10.14-git
COPY ./src .
RUN /bin/sh install.sh
