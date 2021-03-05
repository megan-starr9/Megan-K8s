FROM node:12

# Create app directory
WORKDIR /src

COPY package*.json ./
RUN npm install

COPY ./src .
CMD [ "node", "server.js" ]
