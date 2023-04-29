# Write our first Dockerfile
First, let's go over our Dockerfile and explain each step of the build process

## Run this (From inside /app folder):
```sh
$ docker build -t our-first-dockerfile .
$ docker run -p 3000:3000 our-first-dockerfile
```

### What each param means:
```sh
-t # Tag, Name and optionally a tag in the 'name:tag' format, default tag is "latest"
-p # Publish, publish a container's port(s) to the host "to:from"
-d # detach, continue running in the background
```

### View commands:
```sh
$ docker images # View our images
$ docker history <image id> # view the layers of our image
$ docker ps # View our running containers
```

### Remove commands:
```sh
$ docker rmi <image id> # Remove an image by id
$ docker rm <container id> # View our running containers
```

### connect to a running container (running a shell):
```sh
$ docker run -p 3000:3000 -d our-first-dockerfile
$ docker ps
$ docker exec -it <container id> sh
```

### One last tip:
notice the `.dockerignore` file at the root directory, it's the same as `.gitignore` for git,
it specifies files we do not want to COPY into our container
