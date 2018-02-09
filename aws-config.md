## docker base image install

1. postgresql
```
docker volume create pg-data
docker run --restart=always --name [db_name] -e POSTGRES_PASSWORD=[user_pwd] -e POSTGRES_USER=[user_name] -v pg-data:/var/lib/postgresql/data -d -p 5432:5432 postgres
```

2. redis
```
docker volume create redis-data
docker run --restart=always --name [redis] -v redis-data:/data -d -p 6379:6379 redis redis-server --appendonly yes
```

3. mongodb
```
docker volume create mongo-data
docker run --restart=always --name [some-mongo] -p 27017:27017 -v mongo-data:/data/db -d mongo

```