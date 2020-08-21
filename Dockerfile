FROM docker:19.03.12

COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN apk add --no-cache jq openssl && chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
