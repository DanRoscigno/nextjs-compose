# nextjs-compose

## Commands from blog

```
vi package.json
yarn install
mkdir pages
vi pages/index.jsx
vi pages/alice.jsx
vi pages/peter.jsx
vi pages/journey.jsx
vi pages/_app.jsx
mkdir components
vi components/Navigation.jsx
mkdir shared
vi shared/global.css
yarn run dev
vi Dockerfile
docker build -t client .
docker run --name CLIENT_CONTAINER -p 0.0.0.0:5000:3000 client
docker run --name CLIENT_CONTAINER -p 0.0.0.0:3000:3000 client
docker rm CLIENT_CONTAINER
docker run --name CLIENT_CONTAINER -p 0.0.0.0:3000:3000 client
```

## What I want

Run node in the container and serve pages from a directory
on my workstation, with updates as I edit / add / remove
files in that directory on my workstation.

## How to get to the goal?
- Bind mount the `pages` dir from the host into the container.
- Run `next.js` in dev mode.
- Add a Docker compose file (not strictly necessary, but my
preference).
