# Static DeveloperFolio (HTML + CSS only)

This folder is a no-JavaScript portfolio version inspired by developerFolio.

## Files

- `index.html`
- `styles.css`
- `assets/images/*`
- `assets/fonts/*`

## Run locally

Open `index.html` in your browser.

## Deploy to GitHub Pages

This repository is already configured for GitHub Pages through GitHub Actions.

Repository:

`https://github.com/Gauravchy09/portfolio-website`

Expected live URL:

`https://gauravchy09.github.io/portfolio-website/`

### First-time setup

1. Push this repository to GitHub.
2. Open repository settings.
3. Go to **Pages**.
4. Set **Source** to **GitHub Actions**.
5. Future pushes to `main` will deploy automatically.

### One-command publish flow

From the repository root, run:

`./publish-static-folio.ps1`

That script will stage the static portfolio files, create a commit, and push to `main`.

## Notes

- This version intentionally uses only HTML and CSS.
- Dynamic GitHub/Medium API fetching from React scripts is replaced by static links and static content.
