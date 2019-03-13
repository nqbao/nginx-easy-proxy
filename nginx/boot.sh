#!/bin/bash

export NGINX_PORT=${NGINX_PORT:-80}
export NGINX_REWRITE_PATH=${NGINX_REWRITE_PATH:-"/"}
export NGINX_UPSTREAM=${NGINX_UPSTREAM:-"http://localhost:3000/"}

envsubst '${NGINX_PORT} ${NGINX_REWRITE_PATH} ${NGINX_UPSTREAM}' < nginx.conf.tpl > nginx.conf
cp nginx.conf /etc/nginx/conf.d/default.conf

exec nginx -g "daemon off;"
