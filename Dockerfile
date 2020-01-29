FROM node:10-alpine

WORKDIR /app/presentation/
COPY . .
RUN npm install
RUN chmod +x another-slide.sh
ENTRYPOINT [ "npm", "start" ]