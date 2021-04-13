FROM docker:20.10.6

COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN apk add --no-cache jq openssl bash sshpass gnupg && chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
