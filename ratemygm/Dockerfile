FROM node:12

# Create app directory
WORKDIR /ratemygm

COPY package*.json ./
RUN npm install

COPY . .
CMD [ "node", "server.js" ]
