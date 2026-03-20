FROM alpine:latest
LABEL MAINTAINER="https://github.com/htr-tech/goattool"
WORKDIR /goattool
ADD . /goattool
RUN apk add --no-cache bash ncurses curl unzip wget php 
CMD "./goattool.sh"
