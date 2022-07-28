FROM node:alpine3.16

WORKDIR /var/www/app

COPY app.js /var/www/app

ENTRYPOINT ["node", "app.js"]