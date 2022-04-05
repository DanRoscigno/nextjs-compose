# Dockerfile

# base image
FROM node:alpine

# create & set working directory
RUN mkdir -p /usr/src
WORKDIR /usr/src

# copy package.json
# package.json (destination is relative to
#               WORKDIR, so `.` == WORKDIR)
COPY package.json .

# copy pages and supporting bits and pieces
#              (again, relative to WORKDIR)
ADD pages       pages/
ADD shared      shared/
ADD components  components/

# install dependencies
RUN yarn install

# start app
EXPOSE 3000
CMD ["yarn", "run", "dev", "-H", "0.0.0.0"]
