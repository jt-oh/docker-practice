#syntax=docker/dockerfile:1
FROM node:12-alpine
RUN apk add --no-cache python2 g++ make
WORKDIR /app
EXPOSE 3000
RUN yarn install --production
COPY . .
CMD ["node", "src/index.js"]