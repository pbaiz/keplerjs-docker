FROM node:10-buster-slim
ENV LC_ALL=POSIX
RUN apt-get -yqq update \
    && DEBIAN_FRONTEND=noninteractive apt-get -yqq install \
        curl \
        bzip2 \
        imagemagick \
        jq \
        moreutils \
        git-core \
        g++ \
        make \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

ARG METEOR_VERSION=1.8.1 \
    KEPLER_VERSION=1.7.0
    #TODO get METEOR_VERSION from kepler.meteor/release

ENV PATH=$PATH:/root/.meteor \
    METEOR_ALLOW_SUPERUSER=1 \
    KEPLER_VERSION=$KEPLER_VERSION \
    ROOT_URL="http://localhost" \
    PORT=8800 \
    MONGO_URL="mongodb://0.0.0.0:27017/kepler"

RUN curl "https://install.meteor.com/?release=1.8.1" | /bin/sh

RUN git clone \
    --depth 1 \
    --single-branch \
    #--branch "v${KEPLER_VERSION}" \
    --branch "v1.7.0" \
    https://github.com/Keplerjs/Kepler.git \
    /kepler    

WORKDIR /kepler

RUN npm i

RUN meteor build --directory ./ --server=$ROOT_URL:$PORT
RUN cd /kepler/bundle/programs/server && npm i

COPY ./docker-entrypoint.sh .
COPY ./env2settings.js .
#COPY ./settings.json .

ENTRYPOINT ["/bin/bash"]
CMD ["/kepler/docker-entrypoint.sh"]
