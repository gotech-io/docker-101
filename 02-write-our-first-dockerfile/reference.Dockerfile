# The base image to use
FROM <image>[:<tag>]

# The WORKDIR instruction sets the working directory
# for any RUN, CMD, ENTRYPOINT, COPY and ADD instructions 
# that follow it in the Dockerfile
WORKDIR /path/to/workdir

# The COPY instruction copies new files or 
# directories from <src> to <dest>
COPY <src> <dest>

# The RUN instruction will execute any 
# command in a new layer on top of the current image
RUN <command>

# The CMD instruction provides default
# execution command for a container
# It can be overwritten from command line when running the container
CMD ["executable", "param1", "param2"]

# An execution command for a container that cannot be overwritten
ENTRYPOINT ["executable", "param1", "param2"]

# The EXPOSE instruction informs Docker that the container 
# listens on the specified network ports at runtime
# does not actually publish the port (use -p to publish)
EXPOSE port [/tcp|/udp]

# Same as COPy but <src> can be a URL
# And it will be downloaded and extracted 
# if it is an archive
ADD <src> <dest>

# Sets the user name (or UID) and optionally the user group (or GID)
# to use as the default user and group
# The specified user is used for RUN instructions and at runtime, 
# runs the relevant ENTRYPOINT and CMD commands.
USER <user>[:<group>]

# The ARG instruction defines a variable that users can pass at build-time
# to the builder with the docker build command using the --build-arg <varname>=<value> flag.
ARG name[=<default value>]

# The ENV instruction sets the environment variable <key> to the value <value>
# This value will be in the environment for all subsequent instructions in the build stage
ENV key=value

# adds metadata to an image.
LABEL key="value"

# The HEALTHCHECK instruction tells Docker how to test a container to check that it is still working.
HEALTHCHECK --interval=5m --timeout=3s CMD curl -f http://localhost:3000/ || exit 1