FROM snoopyathome/nodejs:12.18.4

RUN apk add --update python3 git make g++ gcc linux-headers &&\
    npm install -g --unsafe-perm node-red &&\
    rm -rf /var/cache/apk/*

CMD ["node-red"]
