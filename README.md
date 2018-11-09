# docker-base-php

## Description

Debian based PHP docker images.

### Flavours

  - `cli`: image for CLI usage
  - `fpm`: image for FPM/FCGI usage

## Makefile

Tested with GNU Make 3.81.

`FLAVOUR` environment variable defaults to `cli`.

### List available versions to build

    > make versions-avail
    < 7.0/

### Build

    make build -e VERSION=x.y [FLAVOUR=cli|fpm]

### Release

    make release -e VERSION=x.y [FLAVOUR=cli|fpm]

## License

[MIT](LICENSE)
