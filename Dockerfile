FROM python:3.8.6-alpine3.12

RUN apk update && \
    apk upgrade && \
    apk add --no-cache curl

RUN mkdir /app
WORKDIR /app

COPY ./app ./

EXPOSE 5000
RUN pip install -r requirements.txt

