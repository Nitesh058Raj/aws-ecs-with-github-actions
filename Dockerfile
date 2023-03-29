# Base image
FROM node:alpine3.16

# Working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy source code
COPY index.js .

# Expose port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
