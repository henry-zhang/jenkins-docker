FROM alpine:latest

MAINTAINER Henry Zhang

RUN apk add --no-cache openjdk11 --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community

ARG RANCHER_COMPOSE_VERSION=0.12.5

RUN apk add --quiet --no-cache ca-certificates curl unzip && \
	curl -sSL "https://github.com/rancher/rancher-compose/releases/download/v${RANCHER_COMPOSE_VERSION}/rancher-compose-linux-amd64-v${RANCHER_COMPOSE_VERSION}.tar.gz" | tar -xzp -C /usr/bin/ --strip-components=2 && \
	rm -rf /var/cache/*

RUN apk add --quiet --no-cache ca-certificates curl unzip && \
		curl -sSL "https://releases.rancher.com/cli/v0.6.14/rancher-linux-amd64-v0.6.14.tar.gz" | tar -xzp -C /usr/bin/ --strip-components=2 && \
		rm -rf /var/cache/*

RUN	apk -v --no-cache add \
			less \
			groff \
			python3 \
			py3-pip \
			py-setuptools \
		&& pip --no-cache-dir install --upgrade awscli \
		&& apk --purge del py3-pip \
		&& rm -rf /var/cache/apk/* \
		&& rm -rf /root/.cache/pip \
		&& rm -rf /tmp/* \
		&& echo "export PAGER='less -R'" >> /root/.profile

RUN apk add --quiet --no-cache docker && rm -rf /var/cache/apk/*
