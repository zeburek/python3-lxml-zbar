FROM python:alpine

RUN apk add --no-cache gcc musl-dev autoconf libffi-dev gmp-dev \
    libxml2 libxslt-dev jpeg-dev zlib-dev build-base python3-dev linux-headers

RUN apk add zbar-dev --update-cache --repository \
    http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted

RUN pip install lxml pyzbar pillow
