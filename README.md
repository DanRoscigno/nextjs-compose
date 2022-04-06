# nextjs-compose

See the [README in the jsx dir](https://github.com/DanRoscigno/nextjs-compose/blob/main/jsx/README.md).  mdx is a work in progress.

## What I want

**Live updates as I write:**

Run `next,js` in a container and serve pages from a set of directories
on my workstation, with updates as I edit / add / remove
files on my workstation.

## How to get to the goal?
- Mount the `pages` dir (and any other content dirs) from the host into
the container.
- Run `next.js` in dev mode.
- Add a Docker compose file (not strictly necessary, but my
preference).

