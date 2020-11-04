FROM snoopyathome/nodejs:12.18.4

RUN apk add --update python3 git make g++ gcc linux-headers &&\
    npm install -g --unsafe-perm node-red &&\
    npm install -g node-red-contrib-mqttssl &&\
    npm install -g --unsafe-perm openflow-nodered &&\
    apk del python3 git make g++ gcc linux-headers &&\
    rm -rf /var/cache/apk/*

CMD ["node-red"]
