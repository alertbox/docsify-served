# Quick Reference

[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v1.4%20adopted-ff69b4.svg)](CODE_OF_CONDUCT.md)

- Maintained by [the Alertbox Docker Team](https://github.com/alertbox/whale-docsify-served/)
- Where to get help [the Docsify Community](https://discord.gg/3NwKFyR/), [the Alertbox Inc.](https://github.com/alertbox/whale-docsify-served/issues/), or [Stack Overflow](https://stackoverflow.com/questions/tagged/docsify)
- Where to file issues [alertbox/whale-docsify-served/issues/](https://github.com/alertbox/whale-docsify-served/issues/)

# What is Docsify Server?
![logo](https://raw.githubusercontent.com/docsifyjs/docsify-cli/master/media/icon.svg?sanitize=true)

[Docsify](https://docsify.js.org/) is a magical documentation site generator especially awesome for [GitHub Pages](https://pages.github.com/), [Awesome Lists](https://github.com/topics/awesome) et al. [Docsify Server](http://docsifyjs.github.io/docsify-cli/) enables developers to preview easier and faster by leveraging the power of [NodeJS](https://nodejs.org/en/download/) with the flexibility of [READMEs](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/about-readmes).

For additional questions and feedback, please visit the [Docsify Lobby](https://discord.gg/3NwKFyR/) or [Stack Overflow](https://stackoverflow.com/questions/tagged/docsify).

# Quick Start with Docker

Here is how to get a single node Docsify Served cluster running on Docker containers:

Step - 1: Visit [alertbox/whale-docsify-docs](https://github.com/alertbox/whale-docsify-docs/generate) on GitHub to use a template to start the Documentation setup.

Step - 2: Next, spin up a Terminal and clone your GitHub Repository. For example:
```bash
$ git clone https://github.com/kosalanuwan/hello-world
```

Step - 3: Then, run Docsify Served docker container
```bash
$ cd hello-world && docker-compose up -d
```
Visit [localhost:3000](https://localhost:3030) on your favorite browser.

# Requirements and Best Practices

The Docsify Served containers on Docker Hub are based on Linux AMD64 Architecture.

Docsify Served Requirements: For minimum container requirements, you can follow [alertbox/whale-docsify-docs/](https://github.com/alertbox/whale-docsify-docs/).

## Best Practices

- Avoid manually creating documentation sites in GitHub
- Avoid forking GitHub template for documentation
- Avoid creating documentation on the repository root; except if the repo itself is the documentation.
- Avoid installing the `docsify-cli` globally via NPM or YARN; use `npx docsify-cli init ./docs` if you must.

# Additional References

- [Play with Docker](https://www.docker.com/play-with-docker)
- [Create GitHub Pages with Docsify](https://www.youtube.com/watch?v=TV88lp7egMw)
- [Creating additional pages and content using Docsify](https://docsify.js.org/#/more-pages)

# License

This edition is free for unrestricted use for community users. By default, the `latest` tag points to the latest Image with the latest Docsify CLI. At the moment, there aren't any other versions of any combinations.

As with all Docker images, these like also contain other software that may be under other licenses.
