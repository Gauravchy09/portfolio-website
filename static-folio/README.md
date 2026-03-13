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

`https://gauravchoudhary.me/`

### First-time setup

1. Push this repository to GitHub.
2. Open repository settings.
3. Go to **Pages**.
4. Set **Source** to **GitHub Actions**.
5. Under **Custom domain**, enter `gauravchoudhary.me` and save.
6. Future pushes to `main` will deploy automatically.

### Custom domain configuration

The custom domain is configured via the `static-folio/CNAME` file, which contains:

```
gauravchoudhary.me
```

GitHub Pages supports **one** primary custom domain per site. To make both `gauravchoudhary.me` and `gauravchoudhary.tech` work, configure DNS at your domain registrar as follows:

#### For `gauravchoudhary.me` (primary — apex domain)

Add these **A records** pointing to GitHub Pages' IP addresses:

| Type | Host | Value         |
|------|------|---------------|
| A    | @    | 185.199.108.153 |
| A    | @    | 185.199.109.153 |
| A    | @    | 185.199.110.153 |
| A    | @    | 185.199.111.153 |

Also add a **AAAA record** if you want IPv6 support:

| Type | Host | Value                    |
|------|------|--------------------------|
| AAAA | @    | 2606:50c0:8000::153      |
| AAAA | @    | 2606:50c0:8001::153      |
| AAAA | @    | 2606:50c0:8002::153      |
| AAAA | @    | 2606:50c0:8003::153      |

And a **CNAME** for `www`:

| Type  | Host | Value                                  |
|-------|------|----------------------------------------|
| CNAME | www  | gauravchy09.github.io                  |

#### For `gauravchoudhary.tech` (redirect to primary)

Since GitHub Pages only supports one custom domain, redirect `gauravchoudhary.tech` to `gauravchoudhary.me` at the DNS / registrar level. Most registrars offer a **URL redirect** or **forwarding** record:

| Type     | Host | Value                        |
|----------|------|------------------------------|
| REDIRECT | @    | https://gauravchoudhary.me/  |
| REDIRECT | www  | https://gauravchoudhary.me/  |

If your registrar does not support redirect records, you can use a **CNAME** pointing `gauravchoudhary.tech` at a redirect service, or simply inform visitors that `gauravchoudhary.me` is the canonical address.

### One-command publish flow

From the repository root, run:

`./publish-static-folio.ps1`

That script will stage the static portfolio files, create a commit, and push to `main`.

## Notes

- This version intentionally uses only HTML and CSS.
- Dynamic GitHub/Medium API fetching from React scripts is replaced by static links and static content.
- The `static-folio/CNAME` file tells GitHub Pages which custom domain to use; do not delete it.
