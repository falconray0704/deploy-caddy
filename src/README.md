# Build

## Configure target image

Alter configurations in `.env` file for building.

## Build with script
```sh
./build.sh
```

## Build with docker compose
```sh
docker compose build
```

# Configure for your domain

Alter configurations for your domain in `Caddyfile` file at the location of caddy installation.

Alter configurations of `CLOUDFLARE_EMAIL` and `CLOUDFLARE_API_TOKEN` for obtaining the `cert` of your domain over CloudFlare CDN in `docker-compose.yml` file at the location of caddy installation.


