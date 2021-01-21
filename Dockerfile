FROM alpine:edge

RUN apk update

RUN apk add \
  xorriso \
  syslinux

