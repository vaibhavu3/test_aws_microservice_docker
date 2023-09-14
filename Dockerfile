# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the application code into the container
COPY . .

# Expose a port for the application to listen on
EXPOSE 3000

# Define the command to start your application
CMD [ "node", "app.js" ]
