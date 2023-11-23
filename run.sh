#!/bin/sh

openssl req -x509 -nodes -newkey rsa:2048 -keyout ssl.key -out ssl.crt -sha256 -days 365 \
    -subj "/C=GB/ST=London/L=London/O=Alros/OU=IT Department/CN=localhost"

docker build -f dockerfile-odoo -t odoo . 

docker-compose up