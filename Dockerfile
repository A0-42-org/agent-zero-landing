# Build stage
FROM node:20-alpine AS builder


WORKDIR /app

# Copy package files
COPY package.json bun.lock ./

# Install dependencies
RUN npm install -g bun && bun install


# Copy source code
COPY . .

# Build application
RUN bun run build


# Production stage
FROM node:20-alpine


WORKDIR /app


# Copy built application from builder
COPY --from=builder /app/build ./

# Copy package files for runtime dependencies
COPY package.json ./


# Install only production dependencies
RUN npm install -g bun && bun install --production


# Expose port
EXPOSE 3000


# Start the application
CMD ["node", "index.js"]
