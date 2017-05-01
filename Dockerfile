FROM alpine:3.4
MAINTAINER d@practicalmagic.co.za

RUN apk add --update \
    git \
    python \
    py-pip \
  && pip install pygments \
  && rm -rf /var/cache/apk/*

ENV HUGO_VERSION 0.20.6
ENV HUGO_BINARY hugo
ENV HUGO_RESOURCE hugo_${HUGO_VERSION}_Linux-64bit

ADD https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/${HUGO_RESOURCE}.tar.gz /tmp/

RUN  tar -xvzf /tmp/${HUGO_RESOURCE}.tar.gz -C /tmp/ \
	&& mv /tmp/${HUGO_RESOURCE}/${HUGO_BINARY} /usr/bin/hugo && rm -rf /tmp/hugo*
