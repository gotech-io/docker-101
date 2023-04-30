# Docker networking for multi container apps
Our app has progressed since our first lesson, and now, sqlite file is just not good for us, we need an actual **MySQL Database**

## Run this (From inside /app folder) to build our new app:
```sh
$ docker build -t our-first-lite-dockerfile-mysql .
```

## Now let's compare sizes of our new docker image compared to previous ones
```sh
# to view a list of images and their sizes
$ docker images

# now let's deep dive into our image layers
# let's view the history on the previous image
$ docker history our-first-dockerfile-mysql

# and compare it to the history of our current image
$ docker history our-first-lite-dockerfile-mysql
```

## Just to make sure it's still works
```sh
$ docker-compose up
```