# toozej links

A Hugo link page using the [LucentLink](https://github.com/cx48/LucentLink-Hugo) theme. The site is deployed to GitHub Pages by GitHub Actions.

## Local preview

Start the Hugo watcher and unprivileged Nginx server:

```sh
docker compose up
```

Open <http://localhost:8080>. Hugo rebuilds on file changes and unprivileged Nginx proxies the preview. Stop it with `docker compose down`.

## GitHub Pages

The workflow in `.github/workflows/hugo.yaml` builds the site and deploys it whenever `main` changes. In the repository’s **Settings → Pages**, select **GitHub Actions** as the source. The default published URL is <https://toozej.github.io/links/>.

After cloning, initialise the theme submodule:

```sh
git submodule update --init --recursive
```
