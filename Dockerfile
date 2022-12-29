# ============================= BUILD
FROM node:16.17.0-bullseye-slim as build

ENV PROJECT_PATH=/var/www/html/megstarr
RUN mkdir -p $PROJECT_PATH
WORKDIR $PROJECT_PATH

COPY package.json $PROJECT_PATH/package.json
COPY ./site/package.json $PROJECT_PATH/site/package.json
RUN npm install

# ============================= FINAL
FROM node:16.17.0-bullseye-slim
RUN apt-get update && apt-get upgrade -y

ENV PROJECT_PATH=/var/www/html/megstarr
RUN mkdir -p $PROJECT_PATH
WORKDIR $PROJECT_PATH

# Temporary, until we swap to typescript
COPY --chown=node:node --from=build $PROJECT_PATH/node_modules $PROJECT_PATH/node_modules
COPY --chown=node:node ./package.json $PROJECT_PATH/package.json
COPY --chown=node:node ./site $PROJECT_PATH/site

USER node
CMD [ "npm", "start" ]
