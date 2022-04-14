FROM node:16 as base
ENV PROJECT_PATH=/var/www/html/megstarr

RUN mkdir -p $PROJECT_PATH
WORKDIR $PROJECT_PATH

# Cache our dependencies in their own layer
FROM base as dependencies
COPY package*.json $PROJECT_PATH/
RUN npm install

FROM dependencies as build
# Temporary, until we swap to typescript
COPY ./src $PROJECT_PATH/dist

FROM build as final
CMD [ "node", "./dist/server.js" ]
