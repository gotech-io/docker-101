# Docker composing our app
Now that our app has more dependencies it's becoming hard to run all the commands in a row

## Running it with docker-compose is easy
```sh
# this will run all our app and it's dependencies
$ docker-compose up [-d]

# this will stop all of it
$ docker-compose down
```

## Connecting to a container in docker compose
```sh
# the "todo-app" is the name we give it in the docker-compose file 
$ docker-compose exec todo-app sh

# Start running all containers in the file
$ docker-compose up [--build] [-d]

# Restart running containers
$ docker-compose restart

# Bring down all running containers
$ docker-compose down

# List running containers 
$ docker-compose ps

# run "sh" command on the container named "app-name"
$ docker-compose exec app-name sh
```
