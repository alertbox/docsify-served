# Contributing

Welcome! And thank you for your interest in contributing to our project. We use our wonderful [Contributor Covenant](http://contributor-covenant.org/) for our [Code of Conduct](). Please [read it](CODE_OF_CONDUCT.md) before you join our project.

There are many ways in which you can contribute, beyond writing code. Here's a high-level overview of how you can get involved.

- Ask a question on [Stack Overflow]()
- [Submit bugs and feature requests](https://github.com/alertbox/whale-docsify-served/issues), and help us verify as they are checked in
- Upvote [popular feature requests]()
- Review [source code changes](https://github.com/alertbox/whale-docsify-served/pulls)
- Review the [documentation](docs) and make pull requests for anything from typos to new content

## Contributing to Source Code

If you are interested in writing code to fix issues, here's a high-level overview of how you can clone the repos and get started.

### Prerequisites

In order to download necessary tools, clone the repo, and install dependencies via `npm`, you need internet access.

You'll need following tools:

- Git
- VS Code
- Docker Desktop
- Docker Extension for VS Code

### Build and Run

If you want to understand how Whale Docsify Served works, or debug an issue, you'll want to get the source, build it, and run it locally.

#### Step 1 Getting the source code

First fork the repository so that you can make a Pull Request. Then clone your fork locally:

```bash
#!/bin/bash
git clone https://github.com/<your-github-account>/whale-docsify-served
```

Occasionally you would want to merge changes the upstream repository (the official code repo) with your fork.

```bash
#!/bin/bash
cd whale-docsify-served
git checkout master
git pull https://github.com/alertbox/whale-docsify-served master
```

#### Step 2 Build and run from the source

First, you want to ensure Docker Desktop is running on your machine. Then build the Dockerfile locally.

```bash
#!/bin/bash
cd whale-docsify-served
docker build --rm=true -f ./lts-alpine/Dockerfile -t localhost:3000/docsify-served .
```

To spawn the image you built with changes, you use the `docs` folder, which is in our source code.

```bash
#!/bin/bash
docker run -dp 3000:3000 -v `pwd`/docs:/var/www localhost:3000/docsify-served
```

To test the changes, you launch your favorite browser and visit [https://localhost:3000](https://localhost:3000).

<p align="center">
  <img alt="The docsify served in action" src="https://user-images.githubusercontent.com/958227/83914273-911ccd80-a78e-11ea-8958-90f5164782fd.png" width="1024">
</p>

> Default template comes with `docsify init` in action.

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

## Thank You

You contributions to OSS projects, large or small, make great projects like possible. Thank you for taking time to contribute.
