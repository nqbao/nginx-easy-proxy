# Nginx Easy Proxy

Quick and easy way to setup an Nginx reverse proxy **with path rewrite**.

Example:

```
docker run -p 80:80 \
  -e NGINX_REWRITE_PATH=/grafana/ \
  -e NGINX_UPSTREAM=http://localhost/grafana/ \
  nginx-easy-proxy
```
