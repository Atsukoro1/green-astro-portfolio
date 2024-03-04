# Use Node.js LTS version
FROM node:latest

# Create app directory
WORKDIR /usr/src/app

# Install pnpm
RUN npm install -g pnpm

# Copy package.json and package-lock.json (if you have one)
COPY package.json pnpm-lock.yaml ./

# Install app dependencies
RUN pnpm install

# Copy app code
COPY . .

# Build the app
RUN pnpm run build

# Expose the port that your app runs on
EXPOSE 4321

# Start the app
CMD [ "pnpm", "preview" ]
