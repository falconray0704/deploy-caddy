ARG CADDY_BUILDER_TAG
ARG CADDY_TAG

FROM "caddy:${CADDY_BUILDER_TAG:-builder}" AS builder

RUN caddy-builder \
    github.com/caddy-dns/cloudflare

FROM "caddy:${CADDY_TAG:-latest}"

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
