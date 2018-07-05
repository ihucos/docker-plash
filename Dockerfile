FROM alpine

RUN apk update; \
apk add py3-pip

RUN pip install plash
