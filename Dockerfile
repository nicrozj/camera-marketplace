# Фронтенд
FROM node:18 AS frontend-builder
WORKDIR /build
COPY frontend/package*.json .
RUN npm install
COPY frontend .
RUN npm run build

#Caddy
FROM caddy:alpine AS proxy
COPY --from=frontend-builder /build/dist /web/website
COPY Caddyfile /etc/caddy/Caddyfile

# PHP
FROM php:8.2-fpm AS php
RUN docker-php-ext-install pdo pdo_mysql
WORKDIR /web/php
COPY backend .