# Mounting Volumes

## Ways to making our app persistent
### 1. By creating a volume (suggested):
```sh
# Create a volume
$ docker volume create todo-volume

# Let's run our app, but now with volume
$ docker run -p 3000:3000 -v todo-volume:/etc/todos/ our-first-dockerfile

# Now let's clean up, remove all non running containers, then remove the volume
$ docker container prune
$ docker volume rm todo-volume
```

### 2. By mounting a volume:
```sh
# Let's run our app, but now with volume
$ mkdir todo-mount
$ docker run -p 3000:3000 -v ./todo-mount:/etc/todos/ our-first-dockerfile

# Now let's clean up
$ rm -rf ./todo-mount
$ docker container prune
```

## Sharing volumes between container
```sh
# Let's create a volume to share
$ docker volume create shared-volume

# Let's run a regular ubuntu shell with our volume
$ docker run --name sharing-container -it -v shared-volume:/sharedvolume ubuntu

# Run a second on with the same volume in another terminal
$ docker run -it -v shared-volume:/sharedvolume ubuntu

# Another option is to "copy" the volume settings from another container
$ docker run -it --volumes-from sharing-container ubuntu
```