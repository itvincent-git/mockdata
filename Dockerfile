# Use the official Node.js image as base
FROM node:latest

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json files into the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all project files into the container
COPY . .

# Expose the port on which the JSON server will run
EXPOSE 3000

# Command to start the JSON server
CMD ["npx", "json-server", "db.json"]
