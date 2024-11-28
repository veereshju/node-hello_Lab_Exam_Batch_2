FROM node:18-alpine

WORKDIR /app

COPY src/package*.json ./

RUN npm install --production --slient


COPY src/. .

EXPOSE 3000

CMD ["node", "index.js"]
