FROM node:18-slim

WORKDIR /usr/local/app

COPY package*.json ./

RUN npm ci

COPY . .

ENV PORT=80

EXPOSE 80

CMD ["node", "server.js"]
