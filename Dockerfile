FROM node:26

ENV PATH="$PATH:node_modules/.bin"

RUN apt update && apt install -y --no-install-recommends make \
    && rm -rf /var/lib/apt/lists/*

RUN npm install -g pnpm@12.6.0

WORKDIR /app

COPY package.json pnpm-lock.yaml ./
RUN pnpm install --frozen-lockfile

COPY . ./

RUN pnpm run build

CMD [ "bin/start.sh" ]
