FROM alpine:latest

RUN apk --no-cache add lftp ca-certificates openssh

RUN apk update && \
    apk add --update --repository http://dl-3.alpinelinux.org/alpine/edge/testing vips-tools vips-dev fftw-dev gcc g++ make libc6-compat && \
    apk add git && \
    apk add python && \
    rm -rf /var/cache/apk/*

RUN npm install --global gatsby --no-optional gatsby@1.9 
