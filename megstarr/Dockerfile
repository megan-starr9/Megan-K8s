FROM node:12

# Create app directory
WORKDIR /megstarr

COPY package*.json ./
RUN npm install

COPY . .
CMD [ "node", "server.js" ]
