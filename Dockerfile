# syntax=docker/dockerfile:1
   
FROM node:18-alpine
WORKDIR /app
COPY . .
CMD ["node", "src/index.js"]
EXPOSE 80
LABEL version="1.1"