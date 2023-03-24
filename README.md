# netutils

place these two lines in `~/.bash_profile`:
```shell
alias dnstools='kubectl run -it --rm dnsutils --image=docker.io/kuritka/netutils:v1.0.0 --restart=Never -n default'
alias dnsutils=dnstools
```
and run `source ~/.bash_profile`.

Then just type in the command prompt:
```shell
dnsutils -- bin/sh
```
