# plash packaged in docker

## What is this?
This is [plash](https://github.com/ihucos/plash) packaged as a docker container. That is useful to for example use plash in MacOS or other situations where docker is available, but plash is not able to run natively. The docker image should be called via the wrapper script `./plash`.

## Install
```
$ curl -f https://raw.githubusercontent.com/ihucos/docker-plash/master/plash > /usr/local/bin/plash
$ chmod +x /usr/local/bin/plash
```

## Upgrade
A rebuild is triggered on the docker hub/cloud after each plash release, to upgrade run:
```
$ docker pull irae/docker-plash
$ plash --version
```

## Data loss warning
There is a [stackoverflow post](https://stackoverflow.com/questions/39024895/is-it-safe-to-use-same-host-volume-in-multiple-containers) citing possible data loss with multiple docker containers using the same named volume. This warning was removed from the link provided on the stackoverflow post and was about named volumes. This repo let's docker mount the home folder into the container on every invocation. If you now more about this (It's good enough for me) open an issue.

## How stable is it?
Consider it a beta, it is kind of experimental stuff that works really well. I (ihucos) actually developed a big portion of plash in a setup like this.

## Screenshots
A little bit fiddling with XQuartz, and you can have graphical applications.
![screen shot 2018-10-02 at 00 41 56](https://user-images.githubusercontent.com/2066372/46319974-7a4ace80-c5dc-11e8-8841-44012e2a2b46.png)

## Caveats.

- plash containers are run with the `--privileged` flag
- Docker does not handle stderr and stdout in a standard manner but to use plash in other scripts you actually need that
- There are some hacks to if applicable map `/Users` to `/home`
- See the data loss warning
