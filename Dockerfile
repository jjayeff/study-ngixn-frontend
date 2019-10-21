FROM node:8-slim

RUN npm install pm2 -g

WORKDIR /usr/src/app

ADD . /usr/src/app

RUN npm install

EXPOSE 3000

CMD ["pm2-runtime", "node_modules/react-scripts/scripts/start.js"]