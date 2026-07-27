# Josh Ibitoye Portfolio

Personal website for Joshua Seyi Ibitoye, focused on cloud security, DevSecOps, AI systems, cybersecurity research, publications, talks, and selected projects.

## What Changed

- Cleaned the homepage, navigation, profile, SEO, footer, and project/publication copy.
- Removed starter blog/course Markdown and sample publications from the rendered site.
- Replaced Netlify configuration with a Render static-site blueprint.
- Added a portable Render build script that installs Go for Hugo Modules before building.
- Locked Node tooling with pnpm, Hugo Extended, and Pagefind.

## Stack

- Hugo Blox / Hugo Modules
- Hugo Extended 0.150.1
- Go 1.21.5 for Hugo Modules
- pnpm 11
- Pagefind search
- Render static hosting

## Local Development

Install Go and pnpm first, then run:

```bash
pnpm install
pnpm dev
```

Build the production site and search index:

```bash
pnpm build
pnpm run search:index
```

The generated site is written to `public/`, which should not be committed.

## Render Deployment

Render uses `render.yaml` and `build.sh`.

The service is configured as a static site, publishes `public/`, and targets `jsibitoye.com` as the custom domain. After connecting the GitHub repo in Render, deploy the Blueprint and update DNS as Render instructs.
