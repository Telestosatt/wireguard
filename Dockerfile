For AMD64 Architecture
#FROM alpine:3.13.6
#for ARM64v8 Architecture
#FROM alpine@sha256:a1cae3b7df328128f269aa82b32037a91a27d567e39a1e5a44746fca783db3b7

RUN apk add --no-cache \
      openresolv iptables ip6tables iproute2 wireguard-tools \
      findutils # Needed for find's -printf flag

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
