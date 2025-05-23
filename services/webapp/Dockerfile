FROM node:22.16-alpine

WORKDIR /usr/src/app

COPY ./demo-webapp/package.json ./demo-webapp/package-lock.json ./

RUN npm ci

EXPOSE 3000

CMD ["npm", "start"]