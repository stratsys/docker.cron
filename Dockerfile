FROM docker:19.03.13

COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN apk add --no-cache jq openssl bash sshpass gnupg && chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
