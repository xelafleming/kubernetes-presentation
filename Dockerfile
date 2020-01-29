FROM node:10-alpine

WORKDIR /app/presentation/
COPY . .
RUN npm install
ENTRYPOINT [ "npm", "start" ]