#!/usr/bin/env bash

docker run -d \
  --name postgres_ssl \
  -p 5432:5432 \
  postgres_ssl:latest \
  -c ssl=on \
  -c ssl_cert_file='/var/lib/postgresql/server.crt' \
  -c ssl_key_file='/var/lib/postgresql/server.key'
