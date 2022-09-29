FROM node:14-alpine

RUN apk update && apk upgrade

WORKDIR /usr/app

COPY package.json .
RUN npm install

COPY . .
