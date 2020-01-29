FROM node:10-alpine

WORKDIR /app/presentation/
COPY . .
ENTRYPOINT [ "npm", "start" ]