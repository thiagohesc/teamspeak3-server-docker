#!/usr/bin/env bash

set -e

export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin


APP_DIR="/opt/apps/teamspeak3-server-docker"

echo "Entrando no projeto..."
cd "$APP_DIR"

echo "Parando containers..."
docker compose down

echo "Limpando containers parados..."
docker container prune -f

echo "Limpando imagens não usadas..."
docker image prune -a -f

echo "Limpando cache de build..."
docker builder prune -f

echo "Subindo novamente com build..."
docker compose up -d --build

echo "Status:"
docker compose ps

echo "Uso de disco Docker:"
docker system df

echo "Finalizado."
