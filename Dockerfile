FROM node:8

ENV DATA_DIRECTORY="/data"
ENV REMOTE_REGISTRY="https://registry.npmjs.org"
ENV REMOTE_REGISTRY_SKIMDB="https://skimdb.npmjs.com/registry"
ENV BASE_URL="http://127.0.0.1:5080"

RUN npm install -g local-npm --unsafe-perm

EXPOSE 5080
EXPOSE 16984

VOLUME /data

CMD local-npm --remote $REMOTE_REGISTRY --remote-skim $REMOTE_REGISTRY_SKIMDB --directory $DATA_DIRECTORY --url $BASE_URL
