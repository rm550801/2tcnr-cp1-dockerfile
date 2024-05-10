FROM node:alpine

WORKDIR /usr/application

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8090

CMD ["node", "index.js"]