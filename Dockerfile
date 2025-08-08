FROM nodered/node-red:3.1.0

# Set working directory
WORKDIR /usr/src/node-red

# Copy package.json
COPY package.json .

# Install dependencies
RUN npm install --only=production

# Copy Node-RED user data (flows, settings)
COPY . .

# Expose port
EXPOSE 1880

# Start Node-RED
CMD ["npm", "start"]
