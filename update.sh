#!/usr/bin/env bash
set -e

[ ! -d "/opt/traefik" ] && git clone https://github.com/francescobianco/traefik /opt/traefik

cd /opt/traefik

git pull --no-rebase

docker compose up -d --force-recreate
