```
docker pull postgres:13.9-alpine
```

```
docker run -p 5432:5432 --name sr-postgres \
-e POSTGRES_PASSWORD=postgres1234 -e TZ=Asia/Seoul \
-v ~/docker/pgdata:/var/lib/postgresql/data -d postgres:13.9-alpine
```