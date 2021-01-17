# Quick Start

> ### Important!
> The fastest way to get started is to switch to development containers. It's much more simpler to use and maintain. Have a look at [@alertbox/vscode-remote-try-docsify](https://alertbox.github.io/vscode-remote-try-docsify) to learn more.

[Docsify Served](https://hub.docker.com/r/alertbox/docsify-served) runs `docsify serve` for your Docsify-enabled site, letting you write all sorts of Markdown in GitHub platform faster, smarter, and to a bigger scale. You can also adopt Dosify Served incrementally and remove it at anytime, so you can try it out on any Docsify-enabled site and see how you like it. You should only ever have to do a minimal amount of work to describe your Markdown.

## Requirements

We (`@alertbox`) use [Docsify Served](https://hub.docker.com/r/alertbox/docsify-served) for our Docsify-enabled GitHub Pages of all sort. First, you will need followings to get started at the most basic level:

- Git
- An editor, like VS Code
- Docker
  > For minimum container requirements, you can try [Docker Desktop](https://www.docker.com/products/docker-desktop).

For the old projects that are already running Docsify or you initialized using `docsify-cli`, you can simply use [the binary distributions available](https://hub.docker.com/r/alertbox/docsify-served) on Docker Hub. You will want to follow this generic pattern:

- [Create the docker-compose script](#create-a-compose-script) to your Docsify-enabled site
- [Run the Docsify Served](#running-locally) to serve content locally

## Create A Compose Script

Luckily, even if you are not familiar with `.yml` scripts and all that Docker Jazz, this step should be pretty familiar. [Docker's Sample apps with Compose](https://docs.docker.com/compose/samples-for-compose/) is a good walk through. First, you need to create a `docker-compose.yml` at the root of your GitHub repository. Typically, that is outside the `docs/` folder. Next, just copy-and-paste the code below.

```yml
# ./docker-compose.yml
version: "3.8"

services: 
  docsify-served:
    image: alertbox/docsify-served:4.4.1
    ports: 
      # runs on localhost:3020
      - 3083:3000/tcp
    volumes: 
      - ${PWD}/docs:/var/www
```

A lot of the time, Docsify Served can understand your Docsify-enabled site without having to install any other `npm` or `yarn` tools at all.

## Running Locally

Once you have your `docker-compose.yml` file ready, you will want to take it out for a spin. Now open a Terminal, then run Docsify Served locally.

```bash
#!/bin/bash
docker-compose up -d

# Or
docker run -dp 3083:3000 -v `pwd`/docs:/var/www alertbox/docsify-served:4.4.1
```

That's it. Your site is now Docsify Served, and is ready for write-and-preview your content. Spin up your favorite browser, visit [localhost:3083](http://localhost:3083). For example, here's our [GitHub Quickstart](https://alertbox.github.com/gh-quickstart) running on Docsify Served locally:

<p align="center">
  <img alt="The GitHub Quickstart markdown in action" src="https://user-images.githubusercontent.com/958227/84496654-f1e66180-acca-11ea-8aa9-8b78ac53b4b2.png" width="786">
</p>

Check out [Learning Resources](/#learning-resources) for all you need to know guides and awesome lists.

## Troubleshooting

- How to get `gcloud.auth.docker-helper` out of the habit to hook into non-related `docker build`? ([fix](https://stackoverflow.com/a/59173599/257727))
- How to define volume mapping of source code on docker-compose? ([samples](http://blog.code4hire.com/2018/06/define-named-volume-with-host-mount-in-the-docker-compose-file/))