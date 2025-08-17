FROM node:14
WORKDIR /usr/src/app
COPY package*.json ./
RUN nmp install
RUN nmp install express
COPY . .
EXPOSE 3000
CMD [ "node", "server.js" ]
