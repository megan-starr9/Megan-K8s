FROM node:12

# Create app directory
WORKDIR /techofmany

COPY package*.json ./
RUN npm install

COPY . .
CMD [ "node", "server.js" ]
