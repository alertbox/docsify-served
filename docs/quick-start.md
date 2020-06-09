# Quick Start

[Docsify Served](https://hub.docker.com/r/alertbox/docsify-served) runs `docsify serve` for your Docsify-enabled site, making you write all sorts of Markdown in GitHub platform faster, smarter, and to a bigger scale. You can also adopt Dosify Served incrementally and remove it at anytime, so you can try it out on any Docsify-enabled site and see how you like it. You should only ever have to do a minimal amount of work to describe your Markdown.

## Requirements

First, you will need followings to get started at the most basic level:

- Git
- An editor, like VS Code
- Docker
  > For minimum container requirements, you can try [Docker Desktop](https://www.docker.com/products/docker-desktop).

For new projects, luckily we have a starter template ([gh-minimalist](https://github.com/alertbox/gh-minimalist/generate/)) you can simply Docsify yourself and simply forget the rest. But, for the old projects that are already running Docsify or you initialized using `docsify-cli`, you will follow this generic pattern:

- [Adding the compose script](#adding-compose-script) to your Docsify-enabled site
- [Running the Docsify Served](#running-locally) to serve content locally

## Adding Compose Script

Luckily, even if you are not familiar with `.yml` scripts and all that Docker Jazz, this step should be pretty familiar. First, you need to create a `docker-compose.yml` at the root of your GitHub repository. Typically, that is outside the `docs/` folder. Next, just copy-and-paste the code below.

```yml
# ./docker-compose.yml
version: "3.8"

services: 
  docsify-served:
    image: alertbox/docsify-served
    ports: 
      # runs on localhost:3020
      - 3020:3000/tcp
    volumes: 
      - ${PWD}/docs:/var/www
```

A lot of the time, Docsify Served can understand your Docsify-enabled site without having to install any other `npm` tools at all.

## Running Locally

Once you have your `.yml` file ready, you will want to take it to spin. Now spin up the terminal, then run Docsify Served locally.

```bash
#!/bin/bash
docker-compose up -d
```

That's it. Your site is now Docker-enabled, and is ready to serve you write-and-preview your content. Spin up your favorite browser, visit [localhost:3020](http://localhost:3020). For example, here's our [gh-minimalist](https://github.com/alertbox/gh-minimalist/generate) running on Docsify Served locally:

<p align="center">
  <img alt="The docsify served in action" src="https://user-images.githubusercontent.com/958227/83914273-911ccd80-a78e-11ea-8958-90f5164782fd.png" width="786">
</p>

Check out [references](references.md) for all you need to know about Docsify and the extension related guides.
