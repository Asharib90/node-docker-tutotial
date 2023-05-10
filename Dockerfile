#* Dockerfile

# Base image 
FROM node:alpine

# Set working directory
WORKDIR /app

#Install some dependencies
COPY ./package.json  /app
RUN npm install

# Copying source files
COPY .  /app

# Running default command 
CMD ["npm","run","dev"]