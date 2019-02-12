FROM alpine

WORKDIR /usr/mydirectory/new
COPY . ${WORKDIR}

RUN apk add --update npm
RUN npm install

CMD npm start