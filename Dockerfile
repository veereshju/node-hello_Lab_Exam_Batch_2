FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install --production --slient


COPY /. .

EXPOSE 3000

CMD ["node", "index.js"]
