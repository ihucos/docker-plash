FROM alpine

RUN apk update; \
apk add python3 py3-pip

RUN pip install plash
