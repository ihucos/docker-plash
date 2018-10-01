# plash packaged in docker

## What is this?
This is [plash](https://github.com/ihucos/plash) packaged as a docker container. That is useful to for example use plash in MacOS or other situations where docker is available, but plash is not able to run natively. The docker image should be called via the wrapper script `./plash`.

## Install
```
$ curl -f https://raw.githubusercontent.com/ihucos/docker-plash/master/plash > /usr/local/bin/plash
$ chmod +x /usr/local/bin/plash
```
## How stable is it?
Consider it a beta, it is kind of experimental stuff that works really well. I (ihucos) actually developed a big portion of plash in a setup like this.

## DATA LOSS WARNING
TODO: write it. 

## Caveats.

- plash contaienrs are run with the `--privileged` flag
- Docker does not handle stderr and stdout in a standart manner but to use plash in other scripts you actually need that
- There are some hacks to if applicable map `/Users` to `/home`
- See the data loss warning
