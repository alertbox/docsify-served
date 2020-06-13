# Best Practices

> GitHub Pages and Docsify provides a quite simple way of converting our `.md` files into static documentation sites.

At any point that you want to Docsity-enable:

- Avoid creating GitHub Pages manually for your repository; there are many content generating tools out there to get it done rapidly and we happened to use [Docsify](https://docsify.js.org).
- Avoid cloning or forking GitHub Template repositories; click on the [Use This Template button](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/creating-a-repository-from-a-template), except if you are contributing to the source code.
- Avoid creating documentation on the repository root; use `./docs` folder, except when the repo itself is the documentation.
- Avoid installing `docsify-cli` globally via `npm` or `yarn`; we use [GitHub Quickstart](https://alertbox.github.io/gh-quickstart) Template, except for already created repos, `npx docsify-cli init ./docs` otherwise, but the command requires a recent version of `npm` installed locally.
- Avoid adding too much content to the `index.html`; keep documentation sites simple and consistent, and use Markdown files for content authoring.
- Avoid removing [Docsify Served Docker Image](https://hub.docker.com/r/alertbox/docsify-served/) even tho its less than 40MB; shutdown the containers if you must.
- Avoid using port `:3000` and `:8080` for surprises; use a unique port for each of your repo.
- Avoid adding `docker-compose.yml` to `.gitignore` file; make sure to push the unique port and any volume mapping changes so everyone in the team uses the same port and directory structure as you do.
