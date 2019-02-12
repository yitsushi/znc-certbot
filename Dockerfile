FROM alpine:latest

ENV EMAIL=your@email.address
ENV DOMAIN=yourdomain

RUN apk add --no-cache certbot

COPY entry.sh /entry.sh

VOLUME ['/znc-data']

ENTRYPOINT ['/entry.sh']
