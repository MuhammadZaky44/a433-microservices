# Image yang akan digunakan dalam pembuatan container
FROM node:14

# Membuat work directory yaitu app
WORKDIR /app

# Mengcopy semua berkas yang ada ke work directory tujuan (/app)
COPY . .

# Membuat variabel dalam lingkungan container yang nantinya dapat 
# digunakan oleh aplikasi yang berjalan di dalam container
ENV NODE_ENV=production DB_HOST=item-db

# Menjalankan perintah ketika container sedang di build, yaitu menjalankan
# npm install --production --unsafe-perm untuk menginstall dependensi project
# npm run build untuk membuild projeknya
RUN npm install --production --unsafe-perm && npm run build

# Mengekspos port yang dipakai container pada :8080
EXPOSE 8080

# Perintah yang dijalankan ketika container running
CMD [ "npm", "start" ]