# Nginx Easy Proxy

Sometime I just want to quickly setup a reverse proxy for testing, so here is the repo. It provides a quick and easy way to setup an Nginx reverse proxy with path rewrite.

Example:

```
docker run -p 80:80 \
  -e NGINX_REWRITE_PATH=/grafana/ \
  -e NGINX_UPSTREAM=http://localhost/grafana/ \
  nginx-easy-proxy
```
