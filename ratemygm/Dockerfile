FROM node:12 as builder

WORKDIR /ratemygm
COPY package*.json ./
RUN npm install
COPY tsconfig*.json ./
COPY *.ts ./
RUN npm run build

FROM node:12 as serve

WORKDIR /ratemygm
COPY --from=builder /ratemygm/package*.json ./
COPY --from=builder /ratemygm/node_modules ./node_modules
COPY --from=builder /ratemygm/dist/* ./
CMD [ "node", "server.js" ]
