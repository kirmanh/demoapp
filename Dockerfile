# FROM node:20-alpine

# ENV MONGO_DB_USERNAME=admin \
#     MONGO_DB_PWD=password

# RUN mkdir -p /home/app

# COPY . ./home/app

# # set default dir so that next commands executes in /home/app dir
# WORKDIR /home/app

# # will execute npm install in /home/app because of WORKDIR
# RUN npm install

# # no need for /home/app/server.js because of WORKDIR
# CMD ["node", "server.js"]

# # Use an official Node.js runtime as a parent image
# FROM node:14-alpine

# # Create a directory to hold the application code inside the image
# WORKDIR /home/app

# # Copy package.json and package-lock.json (if available)
# COPY package*.json ./

# # Install the application dependencies
# RUN npm install

# # Copy the rest of the application code
# COPY . .

# EXPOSE 3000

# # Specify the command to run your application
# CMD [ "node", "./app/server.js" ]

# Use a base image suitable for your application, for example, Node.js
FROM node:20

# Set the working directory within the container
WORKDIR /app

# Copy the application files into the container
COPY . /app

# Install any dependencies
RUN npm install

# Expose the port your application will listen on
EXPOSE 3000

# Define the command to start your application
CMD ["npm", "start"]