FROM node:9-alpine

WORKDIR /app/
ADD package.json /app/
RUN npm install

ENV PORT=10000

#ADD *.html /app/
VOLUME /data

CMD npx http-server -p $PORT /data