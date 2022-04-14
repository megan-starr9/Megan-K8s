FROM node:16 as base
ENV PROJECT_PATH=/var/www/html/megstarr

RUN mkdir -p $PROJECT_PATH
WORKDIR $PROJECT_PATH

# Cache our dependencies in their own layer
FROM base as dependencies
COPY package.json $PROJECT_PATH/package.json
COPY ./site/package.json $PROJECT_PATH/site/package.json
RUN npm install

FROM dependencies as build
# Temporary, until we swap to typescript
COPY ./site/src $PROJECT_PATH/site/src

FROM build as final
CMD [ "node", "./site/src/server.js" ]
