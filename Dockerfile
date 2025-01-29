# Сборка фронтенда
FROM node:18 AS builder
WORKDIR /build
COPY frontend/package*.json .
RUN npm install
COPY frontend .
RUN npm run build

# Сборка Caddy (прокси)
FROM caddy:2.8.4-alpine AS runner
COPY Caddyfile /etc/caddy/Caddyfile
COPY --from=builder /build/dist /web/camera-marketplace

# Сборка PHP backend
FROM php:8.2-fpm AS php-runner
RUN docker-php-ext-install pdo pdo_mysql
WORKDIR /web/php
