#FROM alpine:latest
FROM maven:3.5-jdk-8-alpine
# Based on https://github.com/monostream/docker-rancher-compose/blob/master/Dockerfile

MAINTAINER Henry Zhang

ARG RANCHER_COMPOSE_VERSION=0.12.5

RUN apk add --quiet --no-cache ca-certificates curl unzip && \
	curl -sSL "https://github.com/rancher/rancher-compose/releases/download/v${RANCHER_COMPOSE_VERSION}/rancher-compose-linux-amd64-v${RANCHER_COMPOSE_VERSION}.tar.gz" | tar -xzp -C /usr/bin/ --strip-components=2 && \
	rm -rf /var/cache/*

RUN		apk -v --no-cache add \
			less \
			groff \
			python \
			py2-pip \
			py-setuptools \
		&& pip --no-cache-dir install --upgrade awscli \
		&& apk --purge del py2-pip \
		&& rm -rf /var/cache/apk/* \
		&& rm -rf /root/.cache/pip \
		&& rm -rf /tmp/* \
		&& echo "export PAGER='less -R'" >> /root/.profile

RUN apk add --quiet --no-cache docker && rm -rf /var/cache/apk/*


#ENTRYPOINT	[ "aws" ]
