FROM node:18
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN chown -R node:node /app  # Grant permissions to Node.js user
USER node                    # Run as non-root
CMD ["node", "server.js"]