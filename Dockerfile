FROM node:20-alpine AS builder


WORKDIR /app

# Copy dependency files
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
COPY --from=builder /app/build ./build


# Copy package files for production dependencies
COPY package.json bun.lock ./


# Install only production dependencies
RUN npm install -g bun && bun install --production


# Set environment variables
ENV NODE_ENV=production
ENV HOST=0.0.0.0
ENV PORT=3000

# Expose port
EXPOSE 3000

# Start the application
CMD ["node", "build/index.js"]
