FROM node:6-alpine

RUN apk add --update tini

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY . ${WORKDIR}

RUN npm install && npm cache clean --force

CMD /sbin/tini npm start