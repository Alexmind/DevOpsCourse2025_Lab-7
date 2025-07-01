#!/bin/bash

docker run -d --name nginx_lab7 --restart unless-stopped -p 3333:443 -v nginx-volume_test:/etc/nginx/ssl nginx5
