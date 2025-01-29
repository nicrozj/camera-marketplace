FROM node:18 AS builder
WORKDIR /build
COPY frontend/package*.json .
RUN npm install
COPY frontend .
RUN npm run build

FROM caddy:alpine AS caddy-runner
COPY --from=builder /build/dist /web/website
COPY Caddyfile /etc/caddy/Caddyfile

FROM php:8.2-fpm as php-runner
RUN docker-php-ext-install pdo pdo_mysql
WORKDIR /web/php