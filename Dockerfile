FROM node:14

WORKDIR /app

COPY ./package.json ./package.json

RUN npm install 

COPY . .
RUN npm run build && npm run export
