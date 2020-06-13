# Contributing

> We use our wonderful [Contributor Covenant](http://contributor-covenant.org/) for our [Contributor Code of Conduct](CODE_OF_CONDUCT.md). This same template is used by [over 350,000 open source projects](https://github.com/search?l=Markdown&q=%22Contributor+Covenant%22+fork%3Afalse&type=Code). Please read that before you join our project.

Welcome! And thank you for your interest in contributing to the template. There are many ways in which you can contribute, beyond writing code. Here's a high-level overview of how you can get involved:

- Ask questions and problems on [Stack Overflow]()
- [Submit bugs and feature requests](https://github.com/alertbox/docsify-served/issues), and help us verify as they are checked in
- Upvote [popular feature requests]()
- Review [source code changes](https://github.com/alertbox/docsify-served/pulls)
- Review the [documentation](docs) and make pull requests for anything from typos to new content

## Contributing to Source Code

If you are interested in writing code to fix issues, here's a high-level overview of how you can clone the repos and get started.

### Prerequisites

In order to download necessary tools, clone the repo, and install dependencies, you need internet access.

You'll need following tools:

- Git
- VS Code
- Docker Desktop
- Docker Extension for VS Code

### Build and Run

If you want to understand how the tool works, or debug an issue, you'll want to get the source, build it, and run it locally.

#### Getting the source code

First, fork the repository so that you can make a [Pull Request (PR)](#pull-requests). Then clone your fork locally:

```bash
#!/bin/bash
git clone https://github.com/<your-github-account>/docsify-served
```

Occasionally you would want to merge changes the upstream repository (the official code repo) with your fork.

```bash
#!/bin/bash
cd docsify-served
git checkout master
git pull https://github.com/alertbox/docsify-served master
```

#### Build and run from the source

First, you want to ensure Docker Desktop is running on your machine. Then build the Dockerfile locally.

```bash
#!/bin/bash
cd docsify-served
docker build --rm=true -f ./lts-alpine/Dockerfile -t localhost:3000/docsify-served .

# Or
docker-compose build
```

To spawn the image you built with changes, you use the `docs/` folder, which is in our source code.

```bash
#!/bin/bash
docker run -dp 3000:3000 -v `pwd`/docs:/var/www localhost:3000/docsify-served

# Or
docker-compose up -d
```

To test the changes, you launch your favorite browser and visit [https://localhost:3000](https://localhost:3000).

### Pull Requests

To enable us to quickly review and accept your pull request, always create one pull request per issue, link the issue in the pull request. Never merge multiple into one unless they all share the same root cause.

Be sure to follow community guidelines and keep the source code changes as small as possible. Avoid any pure document formatting changes to code that has not been modified otherwise.

To avoid multiple pull requests resolving the same issue, let others know you are working on it by saying so in a comment.

### Publishing

At present, the Docker Images are only supported following platforms: `Linux AMD64` Architecture.

These `tags` are available: `latest | preview | lts-alpine | docsify-cli-latest`

The `tag-and-push.sh` script for each `Dockerfile` contains followings:

- Supported `platforms` and `docsify-cli` versions
- Tag the `localhost:3000/docsify-served`
- Push to `alertbox/docsify-served` repository on Docker Hub.

Each newly created `Dockerfile` must have it's own `bash` script with supported `tags`.

### Discussion Etiquette

In order to keep the conversations clear and transparent, please limit discussion to English and keep things on topic with the issue. Be considerate to others and try to be courteous and professional at all times.

### Thank You

Your contributions to OSS projects, large or small, make great projects like possible. Thank you for taking time to contribute.
