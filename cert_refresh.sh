#!/bin/bash

openssl req -x509 -out ./ssl/nginx.crt -keyout ./ssl/nginx.key \
  -newkey rsa:2048 -nodes -sha256 \
  -subj '/CN=nginx' -extensions EXT -config <( \
   printf "[dn]\nCN=ubt-srv1\n[req]\ndistinguished_name = dn\n[EXT]\nsubjectAltName=DNS:ubt-srv1\nkeyUsage=digitalSignature\nextendedKeyUsage=serverAuth")
