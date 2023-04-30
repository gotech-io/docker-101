# change the base image to a smaller one
FROM node:18-alpine 
WORKDIR /app

# We separate the copy of the package.json and package-lock.json
# from the rest of the files to take advantage of the Docker cache
COPY package.json package-lock.json ./

# npm ci does not install any "new" dependencies and is prefered
# --production flag will not install any devDependencies, also lowering the size of the image
RUN npm ci --production

# Copy the rest of the files
COPY src ./src

CMD ["node", "src/index.js"]