# netutils

contains two images:
- `docker.io/kuritka/netutils:v1.2.1-amd64` for amd64 architecture
- `docker.io/kuritka/netutils:v1.2.1-arm64` for arm64 architecture

place these two lines in `~/.bash_profile`:
```shell
alias dnstools='kubectl run -it --rm dnsutils --image=docker.io/kuritka/netutils:v1.2.1-amd64 --restart=Never -n default'
alias dnsutils=dnstools
```
and run `source ~/.bash_profile`.

Then just type in the command prompt:
```shell
dnsutils -- bin/sh
```
