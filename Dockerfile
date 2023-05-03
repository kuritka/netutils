FROM alpine:3.17

LABEL maintainer="@kuritka"

RUN apk add --no-cache \
        bind-tools     \
        net-tools \
        curl \
        openssl \
        tcpdump \
        iproute2 \
        iputils \
        jq \
        busybox-extras \
        nmap \
        bash

COPY .bash_profile /root/.bash_profile

CMD ["sh"]
