FROM node:22.16-alpine

WORKDIR /usr/src/app

COPY ./demo-api/package.json ./demo-api/package-lock.json ./

RUN npm ci

EXPOSE 3001

CMD ["npm", "start"]