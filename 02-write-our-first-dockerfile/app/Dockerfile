# The base image to use
FROM node:18-alpine

# The WORKDIR instruction sets the working directory
# for any RUN, CMD, ENTRYPOINT, COPY and ADD instructions 
# that follow it in the Dockerfile
WORKDIR /app

# The COPY instruction copies new files or 
# directories from <src> to <dest>
COPY . .

# The RUN instruction will execute any 
# command in a new layer on top of the current image
RUN npm install

# The CMD instruction provides default
# execution command for a container
# It can be overwritten from command line when running the container
CMD ["node", "src/index.js"]