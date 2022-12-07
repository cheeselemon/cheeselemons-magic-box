#!/bin/bash

docker pull postgres:13.9-alpine


docker run -p 5432:5432 --name my_postgres_name \
-e POSTGRES_PASSWORD=my_password -e TZ=Asia/Seoul \
-v ~/docker/pgdata:/var/lib/postgresql/data -d postgres:13.9-alpine
