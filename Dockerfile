# Use Node.js base image
FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app
COPY . .

# Run tests (optional)
# RUN npm test

# Expose the app on port 8000
EXPOSE 8000

# Default command
CMD ["npm", "start"]
