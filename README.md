This is a simple repo that can be used to quickly start working on a local
Drupal site

# Requirements
 - [Docker for Desktop](https://www.docker.com/products/docker-desktop)
 - [Lando](https://docs.devwithlando.io)

# Getting Started
 * Clone this repo locally
 * Copy EXAMPLE.local.env to .local.env and update it accordingly and make adjustements accordingly

@todo: create `make init arg1 arg2` where arg1 is d7 or d8 and arg2 is app name; prompt for start & install? 

 * For Drupal 8 run:
  `lando init \
  --source remote \
  --remote-url https://www.drupal.org/download-latest/tar.gz \
  --remote-options="--strip-components 1" \
  --recipe drupal8 \
  --destination ./web \
  --webroot ./web \
  --name my-first-drupal8-app`
 * For Drupal 7 run:
  `lando init \
  --source remote \
  --remote-url https://ftp.drupal.org/files/projects/drupal-7.61.tar.gz \
  --remote-options="--strip-components 1" \
  --recipe drupal7 \
  --destination ./web \
  --webroot ./web \
  --name my-first-drupal7-app`
 * Run `lando start`
 * Run `make reinstall` @todo: figure out haw to make this "install" AND "reinstall"

@todo: add info about restart and stop
