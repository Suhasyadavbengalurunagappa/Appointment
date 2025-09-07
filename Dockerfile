FROM node:20-alpine
WORKDIR /app

# Copy package.json first for better caching
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy your application code
COPY index.js .

# Change ownership to node user
RUN chown -R node:node /app
USER node

# Your app uses PORT env var with default 3001
EXPOSE 3000

CMD ["node", "index.js"]