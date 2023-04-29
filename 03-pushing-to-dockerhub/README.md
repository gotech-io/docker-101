# Pushing to DockerHub

## Login to DockerHub after creating an account:
```sh
$ docker logout # If needed
$ docker login
```

## Build the image (from previous /app folder):
```sh
# we need to tag it with <hub-user>/<repo-name>:<tag>
$ docker build -t dorongotech/pushing-to-dockerhub .
# or take another image and re-tag it
$ docker tag our-first-dockerfile dorongotech/pushing-to-dockerhub
$ docker images # To view
```

## Push the image to DockerHub
```sh
$ docker push dorongotech/pushing-to-dockerhub
```
view at:
https://hub.docker.com/repository/docker/dorongotech/pushing-to-dockerhub/general

### Pull an image from DockerHub:
```sh
# Will download the image locally
$ docker pull dorongotech/pushing-to-dockerhub[:latest]

# Docker run will pull the image if not found locally
$ docker run -p 3000:3000 dorongotech/pushing-to-dockerhub[:latest]
```
