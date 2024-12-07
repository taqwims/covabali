# Gunakan image Node.js sebagai basis
FROM node:18-alpine

# Set working directory dalam container
WORKDIR /app

# Copy package.json dan install dependencies
COPY package*.json ./
RUN npm install

# Copy seluruh file aplikasi
COPY . .

# Set lingkungan (opsional)
ENV .env=production

# Expose port yang akan digunakan aplikasi
EXPOSE 8080

# Command untuk menjalankan aplikasi
CMD ["node", "./src/server/server.js"]