ssh -i ~/.ssh/[pk_name].pem ubuntu@ec2-34-210-69-61.us-west-2.compute.amazonaws.com

## docker base image install

1. postgresql
```
sudo docker pull postgres
sudo docker volume create pg-data
sudo docker run --restart=always --name [db_name] -e POSTGRES_PASSWORD=[user_pwd] -e POSTGRES_USER=[user_name] -v pg-data:/var/lib/postgresql/data -d -p 5432:5432 postgres
```

2. redis
```
sudo docker pull redis
sudo docker volume create redis-data
sudo docker run --restart=always --name [redis] -v redis-data:/data -d -p 6379:6379 redis redis-server --appendonly yes
```

3. mongodb
```
sudo docker pull mongo
sudo docker volume create mongo-data
sudo docker run --restart=always --name [some-mongo] -p 27017:27017 -v mongo-data:/data/db -d mongo

```