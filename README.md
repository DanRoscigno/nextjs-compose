# nextjs-compose

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

## Content source
It is nice to have a few files in the content dirs as you learn
any content presentation system.  The 
[blog on medium](https://medium.com/swlh/dockerize-your-next-js-application-91ade32baa6)
is great in my opinion, and I am using that content while I build the
compose file.

<img width="1133" alt="image" src="https://user-images.githubusercontent.com/25182304/161809062-7854d47c-e94f-4fff-bde7-74064bb9778f.png">

## Build

The only required file to build is `package.json`.
But, since you cannot run `next.js` without a `pages` dir,
also populate at least one file in pages.

To build a set of content pages pop the content into
these dirs:
- pages
- shared
- components

Note: if you add a new content dir, then add it to the 
    `docker-compose.yml` so that it gets mounted (I don't 
    like mounting everything in the container, just the 
    package.json and the content files).

## Build setup
The command to build the Docker image is `docker compose build`.
This command causes an image to be built with `package.json` in 
place, and `yarn install` to be run.  See the `Dockerfile` and
`docker-compose.yml`.

## Running in development
I like to see changes made live as I add new content.  If the
content dirs (pages, shared, and components from the blog) are
mounted from the host system (my laptop, or whatever system you
are editing on) into the container at the right spot, then `next.js`
will happily build and serve as you edit as long as you run in
development mode.

### Mounting content dirs
In the `docker-compose.yml` file the volumes are configured like so:
```
    volumes: # Links the source files to the running container
      - ./package.json:/usr/src/package.json
      - ./pages:/usr/src/pages
      - ./shared:/usr/src/shared
      - ./components:/usr/src/components
```
If you add a new content dir, for example `includefiles`, then add 
a new line to the `docker-compose.yml`.

## Commands I ran

This is simply a place for me to grab filenames and commands from while I write the README

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
vi docker-compose.yml
docker compose build
docker compose up
```
