FROM node:alpine3.16

WORKDIR /var/www/app

COPY app.js /var/www/app

RUN --mount=type=secret,id=DB_PASSWORD \
    echo "osama=%DB_PASSWORD%" > .env \
    && sed -i "s/%DB_PASSWORD%/$(cat /run/secrets/DB_PASSWORD)/g" .env

ENTRYPOINT ["node", "app.js"]