[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v1.4%20adopted-ff69b4.svg)](CODE_OF_CONDUCT.md)
![Docker Image Version (latest semver)](https://img.shields.io/docker/v/alertbox/docsify-served?sort=semver)
![Docker Pulls](https://img.shields.io/docker/pulls/alertbox/docsify-served)
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/alertbox/docsify-served/latest)
![MicroBadger Layers](https://img.shields.io/microbadger/layers/alertbox/docsify-served)

> ### IMPORTANT!
> This project has been archived since we switched to development containers. It's much simpler to use and maintain. Have a look at [@alertbox/vscode-remote-try-docsify](https://alertbox.github.io/vscode-remote-try-docsify) to learn more.

## Quick Reference

- Maintained by [the Alertbox Docker Team](https://alertbox.github.io/docsify-served/)
- Where to get help [the Docsify Community](https://discord.gg/3NwKFyR/), [the Alertbox Inc.](https://alertbox.github.io/docsify-served/#/quick-start), or [Stack Overflow](https://stackoverflow.com/questions/tagged/docsify)
- Where to file issues [alertbox/docsify-served/issues/](https://github.com/alertbox/docsify-served/issues/)

## What is Docsify CLI?

For background on the project, please read [this overview](https://docsifyjs.github.io/docsify-cli/).

## Quick Start with Docker

Check out the [how to get started](https://alertbox.github.io/docsify-served/#/quick-start), in summary, here's what you will want to do:

```bash
#!/bin/bash
cd my-docsify-enabled-project
docker run -dp 3083:3000 -v `pwd`/docs:/var/www alertbox/docsify-served:4.4.1
```

<p align="center">
  <img alt="The alertbox/docsify-served in action" src="https://user-images.githubusercontent.com/958227/83913776-9a596a80-a78d-11ea-83ea-b8d953996c21.png" width="1024">
</p>

Visit [localhost:3083](https://localhost:3083) on your favorite browser.

## Requirements and Best Practices

The Docsify Served containers on Docker Hub are based on `Linux AMD64` Architecture.

Docsify Served Requirements: For minimum container requirements, you can use our [GitHub Quickstart](https://alertbox.io/gh-quickstart/) template.

### Best Practices

For a complete list of best practices, read [these points](https://alertbox.github.io/docsify-served/#/best-practices).

## License

This edition is free for unrestricted use for community users. By default, the `preview` or `latest` tags point to the latest Image with the latest [Docsify CLI](https://docsifyjs.github.io/docsify-cli/). At the moment, there aren't any other versions of any combinations.

As with all Docker images, these also contain other software that may be under other licenses.
