# docker-base-php

## Description

Debian based PHP docker images.

## Makefile

Tested with GNU Make 3.81.

### List available versions to build

    > make versions-avail
    < 7.0/

### Build

    make build -e VERSION=x.y

### Release

    make release -e VERSION=x.y

## License

[MIT](LICENSE)
