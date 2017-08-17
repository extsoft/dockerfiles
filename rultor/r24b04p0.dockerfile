FROM ruby:2.4.1-alpine3.6
LABEL maintainer="Dmytro Serdiuk <dmytro.serdiuk@gmail.com>"
RUN apk update && \
    apk upgrade && \
    apk add --no-cache bats=0.4.0-r2 build-base libffi-dev && \
    gem install pdd
