# Use Node.js official image
FROM node:14

# Create and set working directory
WORKDIR /app

# Copy only package.json first to leverage Docker cache
COPY app/package.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY app .

# Expose the app's port
EXPOSE 3000

# Run the application
CMD ["npm", "start"]

