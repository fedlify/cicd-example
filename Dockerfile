# First stage: Build
FROM node:20-alpine as builder
WORKDIR /app
COPY package.json ./
RUN npm install --production
COPY . .

# Second stage: Production image
FROM node:20-alpine
WORKDIR /app
COPY --from=builder /app /app
EXPOSE 3000
CMD ["node", "index.js"]
