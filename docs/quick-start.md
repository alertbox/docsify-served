# Quick Start

For minimum container requirements, you can use [alertbox/gh-minimalist/](https://github.com/alertbox/gh-minimalist/) GitHub template.

## Prerequisites

- Git
- Docker Desktop
- VS Code
  - Docker Extension for VS Code
- GitHub Account

Here is how to get a single node Docsify Served cluster running on Docker containers:

## Step 1

Visit [alertbox/gh-minimalist](https://github.com/alertbox/gh-minimalist/generate) on GitHub to use a template to start the documentation setup.

## Step 2

Next, spin up a Terminal and clone your GitHub Repository. For example:

```bash
#!/bin/bash
git clone https://github.com/<you-github-account>/hello-docsifyed
```

## Step 3

Finally, run Docsify Served docker container to build and preview your documentation.

```bash
#!/bin/bash
cd hello-docsifyed && docker-compose up -d
```

<p align="center">
  <img alt="The docsify served in action" src="https://user-images.githubusercontent.com/958227/83914273-911ccd80-a78e-11ea-8958-90f5164782fd.png" width="768">
</p>

Spin up your favorite browser, visit [localhost:3000](https://localhost:3000).
