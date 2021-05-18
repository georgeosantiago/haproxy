docker run -it -v "$(pwd)"/haproxy.cfg:/haproxy.cfg --rm haproxy:alpine  haproxy -c -f /haproxy.cfg
