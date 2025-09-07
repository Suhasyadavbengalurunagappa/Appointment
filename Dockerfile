FROM node:20-alpine

WORKDIR /app

# Copy app source
COPY index.js .

# Run as non-root for security
USER node

# Default port (change per service if needed)
EXPOSE 3000

CMD ["node", "index.js"]
