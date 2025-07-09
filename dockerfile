# Dockerfile for WAHA on Koyeb
FROM node:18-alpine

WORKDIR /app

COPY . .

RUN npm install

ENV PORT=3000
ENV USE_MULTI_DEVICE=true

EXPOSE 3000

CMD ["node", "index.js"]
