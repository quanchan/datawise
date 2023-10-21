# Use an official Node.js runtime as the base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and yarn.lock files to the container
COPY package.json yarn.lock ./

# Install app dependencies using Yarn
RUN yarn

# Copy the rest of the application code to the container
COPY . .

# Run the database migrations
# RUN yarn db

# Build the Next.js app
RUN yarn build

# Expose the port that the app will run on
EXPOSE 3000

# Command to start the application
CMD ["yarn", "start"]