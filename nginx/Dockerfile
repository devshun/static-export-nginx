FROM node:lts-alpine as builder
WORKDIR /my-app

COPY my-app/package.json ./
COPY my-app/package-lock.json ./

RUN npm install
COPY my-app/ ./
RUN npm run build

FROM nginx:alpine

COPY nginx/default.conf /etc/nginx/conf.d/default.conf

COPY --from=builder /my-app/out /var/www/out

CMD ["nginx", "-g", "daemon off;"]