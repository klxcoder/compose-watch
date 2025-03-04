# Run as a non-privileged user
FROM node
RUN useradd -ms /bin/sh -u 1001 app
USER app

WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile
COPY --chown=app:app ./src ./src

CMD ["yarn", "dev"]
