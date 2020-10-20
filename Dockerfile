FROM alpine:3.8

RUN apk add -q --update \
    && apk add -q \
            python3 py3-pip py3-setuptools \
            ca-certificates \
    && pip3 install --upgrade pip \
    && pip3 install awscli \
    && rm -rf /var/cache/apk/*

ENTRYPOINT ["aws"]
