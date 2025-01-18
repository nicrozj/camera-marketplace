FROM node:lts-alpine AS builder
WORKDIR /build
COPY package.json package-lock.json ./
RUN npm install
COPY . .
RUN npm run build

FROM caddy:2.8.4-alpine AS runner
COPY Caddyfile /etc/caddy/Caddyfile
COPY --from=builder /build/dist /web/camera-markeplace