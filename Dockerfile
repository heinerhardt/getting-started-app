# syntax=docker/dockerfile:1

FROM node:18-alpine
WORKDIR /app
COPY . .
RUN apk add --no-cache bash
RUN yarn install --production
CMD ["node", "src/index.js"]
EXPOSE 3000
