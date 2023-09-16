# Menggunakan image node:18-alpine dari Dockerhub sebagai base
FROM node:18-alpine as base

# Membuat working directory pada image dengan path /usr/src/app
WORKDIR /usr/src/app

# Memindahkan file package*.json ke working directory di dalam image
COPY package*.json ./

# Menjalankan npm install untuk menginstall dependecies yang dipakai
RUN npm install

# Mengcopy app bundle ke working directory image
COPY . .

# Mengekspos container ke port 3000
EXPOSE 3000

# Menjalankan 'npm start' ketika container dimulai
CMD ["npm", "start"]