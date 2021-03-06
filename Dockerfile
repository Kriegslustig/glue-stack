FROM alpine:edge
MAINTAINER Kriegslustig

EXPOSE 80
EXPOSE 443

WORKDIR /var/app
VOLUME /var/app
CMD npm start

ADD ./package.json /var/app/package.json

RUN apk update
RUN apk add nodejs

ENV NODE_ENV=production

CMD npm i && node ./src/server/main.js

