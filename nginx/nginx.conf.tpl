server {
  listen ${NGINX_PORT};
  root /usr/share/nginx/www;
  index index.html index.htm;

  location ${NGINX_REWRITE_PATH} {
    proxy_pass ${NGINX_UPSTREAM};
    break;
  }
}
