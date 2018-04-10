FROM alpine 

LABEL maintainer="Heroku node-js-sample"

RUN apk add --update nodejs nodejs-npm

COPY . /src

WORKDIR /src

RUN npm install 

EXPOSE 5000

ENTRYPOINT ["node", "index.js"]