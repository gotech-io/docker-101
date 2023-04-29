# Docker networking for multi container apps
Our app has progressed since our first lesson, and now, sqlite file is just not good for us, we need an actual **MySQL Database**

## Run this (From inside /app folder) to build our new app:
```sh
$ docker build -t our-first-dockerfile-mysql .
```

```sh
# create a user-defined bridge network for our app
$ docker network create todo-app-network

# run mysql (-e is for passing environment variables)
$ docker run -d \
    --network todo-app-network --network-alias mysql \
    -v todo-mysql-data:/var/lib/mysql \
    -e MYSQL_ROOT_PASSWORD=secret \
    -e MYSQL_DATABASE=todos \
    mysql:8.0

# now let's run our server on the network we created
# notice that we pass mysql environment variable
$ docker run -p 3000:3000 \
  --network todo-app-network \
  -e MYSQL_HOST=mysql \
  -e MYSQL_USER=root \
  -e MYSQL_PASSWORD=secret \
  -e MYSQL_DB=todos \
  our-first-dockerfile-mysql
```