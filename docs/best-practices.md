# Best Practices

> GitHub Pages and Docsify provides a quite simple way of converting our `.md` files into static documentation sites.

- Avoid creating GitHub Pages manually for your repository; there are many content generating tools out there to get it done rapidly and we happened to use Docsify for that matter
- Avoid cloning or forking GitHub template repositories; click on the `Use This Template` button, except if you are contributing to the repository
- Avoid creating documentation on the repository root; use `./docs` folder, except when the repo itself is the documentation.
- Avoid installing `docsify-cli` globally via NPM or YARN; we use `gh-minimalist` template, except for already created repos, `npx docsify-cli init ./docs` otherwise, but the command requires a recent version of `npm` installed locally
- Avoid adding too much content to the `index.html`; keep documentation sites simple and consistent, and use GitHub Pages for content
- Avoid removing Docsify Served image even tho its less than 40MB; down the containers if you must
- Avoid using port `:3000` and `:8080` to avoid surprises; use a unique port for each of your repo
- Avoid adding `docker-compose.yml` to `.gitignore` file; make sure to push the unique port change so everyone in the team uses the same port as you do
