FROM node

WORKDIR /usr/src/app

ADD app.js package.json ./

RUN npm install

EXPOSE 3000

CMD [ "node", "app.js" ]
