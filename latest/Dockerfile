FROM node:lts-alpine

LABEL authors="@kosalanuwan" \
      url="https://github.com/alertbox/whale-docsify-served" \
      documentation="https://github.com/alertbox/whale-docsify-served" \
      source="https://github.com/alertbox/whale-docsify-served" \
      version="1.0.1-next.2" \
      vendor="@alertbox" \
      licenses="(MIT)" \
      title="Docsify Server (latest version) for GitHub Pages" \
      description="Docsify Serve could map the source code to run without having been to install node modules and docsify \
      on the host machine. Quite useful for developers."

# just verify versions
RUN node -v; \
    npm -v; \
    yarn -v;

ARG DEFAULT_EXPOSE=3000
ENV PORT $DEFAULT_EXPOSE

WORKDIR /var/www
EXPOSE $PORT/tcp

ENTRYPOINT npm i docsify-cli@latest -g && docsify serve . -p $PORT
