FROM node:lts-alpine

LABEL authors="@kosalanuwan" \
      url="https://github.com/alertbox/whale-docsify-served" \
      documentation="https://github.com/alertbox/whale-docsify-served" \
      source="https://github.com/alertbox/whale-docsify-served" \
      version="1.0.0" \
      vendor="@alertbox" \
      licenses="(MIT)" \
      title="Docsify Server for GitHub Pages" \
      description="Docsify Serve could do map the source code to run without having been to install node modules and docsify \
      on the host machine. Quite useful for developers."

# just verify versions
RUN node -v; npm -v

# install docsify-js CLI globally
RUN npm i docsify-cli@latest -g

WORKDIR /var/www
EXPOSE 3000/tcp

ENTRYPOINT docsify serve . -p 3000
