FROM alpine:latest

RUN apk add --update curl && rm -rf /var/cache/apk/*

COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]