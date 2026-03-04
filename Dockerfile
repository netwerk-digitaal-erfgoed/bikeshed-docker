FROM python:3-alpine

COPY requirements.txt .
RUN apk add --no-cache --virtual .build-deps g++ gcc jpeg-dev libxml2-dev libxslt-dev \
    && pip install -r requirements.txt \
    && apk del .build-deps \
    && apk add --no-cache libjpeg libxslt git

WORKDIR /src
CMD ["bikeshed", "spec"]
