FROM node:12-alpine

RUN apk update \
    && apk --no-cache add bash

COPY .gherkin-lintrc /root/

COPY run-gherkin-lint /usr/bin/
