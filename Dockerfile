FROM python:alpine

ARG CLI_VERSION=1.18.3

RUN apk -uv add --no-cache \
    groff \
    jq \
    less
    
RUN pip install --no-cache-dir \
    awscli==$CLI_VERSION \
    awsebcli

WORKDIR /aws

CMD sh
