# Menggunakan image dari node 14 alpine
FROM node:14.21.3-alpine3.17

# Membuat working direktori
WORKDIR /app

# Menyalin working directory ke /app
COPY . .

# Menambahkan environment variable
ENV NODE_ENV=production DB_HOST=item-db

# Menginstall dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Expose ke port 8080
EXPOSE 8080

# Menjalan project
CMD [ "npm", "start" ]