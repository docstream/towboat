FROM gliderlabs/alpine:latest
MAINTAINER Dynnamitt

ENV REFRESHED_AT 2015-05-19

RUN apk-install curl jq
COPY . /opt/app/
WORKDIR /opt/app/
