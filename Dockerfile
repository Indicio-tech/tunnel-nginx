FROM nginx:alpine

# install openssl
RUN apk add --update openssl && \
    rm -rf /var/cache/apk/*

COPY nginx.conf /etc/nginx/nginx.conf
COPY site.conf /etc/nginx/conf.d/default.conf
COPY create-self-signed.sh /docker-entrypoint.d/10-create-self-signed.sh
