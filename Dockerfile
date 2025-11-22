# Use official Node.js image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy ONLY package files first (better caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your project
COPY . .

# Expose port (if your bot uses Express)
EXPOSE 3000

# Start the bot
CMD ["node", "app.js"]
