FROM node:lts-alpine

LABEL authors="@kosalanuwan" \
      url="https://github.com/alertbox/whale-docsify-served" \
      documentation="https://github.com/alertbox/whale-docsify-served" \
      source="https://github.com/alertbox/whale-docsify-served" \
      version="1.0.0" \
      vendor="@alertbox" \
      licenses="(MIT)" \
      title="Docsify Server (stable version) for GitHub Pages" \
      description="Docsify Serve could map the source code to run without having been to install node modules and docsify \
      on the host machine. Quite useful for developers."

# just verify versions
RUN node -v; \
    npm -v; \
    yarn -v;

ARG DEFAULT_CLI_VERSION=4.4.1
ARG DEFAULT_EXPOSE=3000

ENV CLI_VERSION $DEFAULT_CLI_VERSION
ENV PORT $DEFAULT_EXPOSE
 
# install docsify-js CLI globally
RUN npm i docsify-cli@$CLI_VERSION -g; \
    npm list -g --depth=0;

WORKDIR /var/www
EXPOSE $PORT/tcp

ENTRYPOINT docsify serve . -p $PORT
