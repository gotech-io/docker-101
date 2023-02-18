# Launch our first container

## Run this:
```sh
$ docker run -p 80:80 nginx
```

## Now browse here:
http://localhost/


### What each param means:
```sh
-p # Publish, publish a container's port(s) to the host "to:from"
```

### View our running container:
```sh
$ docker ps
```