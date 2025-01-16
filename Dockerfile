# Use the official Node.js LTS version as the base image
FROM node:16

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the app on port 8080
EXPOSE 8080

# Start the application
CMD ["npm", "start"]

