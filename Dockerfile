FROM python:3.10-alpine

RUN apk add --no-cache --virtual .build-deps g++ gcc jpeg-dev libxml2-dev libxslt-dev \
    && pip install bikeshed \
    && apk del .build-deps \
    && apk add --no-cache libjpeg libxslt git

WORKDIR /src
CMD ["bikeshed", "spec"]
