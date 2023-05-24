FROM docker:20.10.24

RUN apk add --no-cache jq

#COPY pwd.yml /opt/pwd.yml
COPY pwd-entrypoint.sh /usr/local/bin/pwd-entrypoint.sh

WORKDIR /pwd

ENTRYPOINT ["pwd-entrypoint.sh"]
