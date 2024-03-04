# Use Node.js LTS version
FROM node:latest

# Create app directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if you have one)
COPY package.json ./

# Install app dependencies
RUN npm install

# Copy app code
COPY . .

# Build the app
RUN npm run build

# Expose the port that your app runs on
EXPOSE 8080

# Start the app
CMD [ "npm", "run", "preview" ]
