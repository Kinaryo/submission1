FROM node:14.21.2-alpine
# meminta docker untuk mengunduh atau mengambil base image bernama node.js versi 14 dengan OS Alpine 
WORKDIR /app
# membuat directory baru bernama app di dalam container
COPY . .
#Digunakan untuk menyalin semua berkas yang ada di local working directory
ENV NODE_ENV=production DB_HOST=item=item-db
#mengatur variabel lingkungan yang dugunakan untuk melakukan mode produksi dan host databse
RUN npm install --production --unsafe-perm && npm run build
#perintah dependencies untuk production dan build aplikasi
EXPOSE 8080
#Digunakan untuk menentukan bahwa aplikasi berjalan pada port 3000
CMD ["npm","start"]
#perintah untuk menjalan server dengan perintah npm start setelah container diluncurkan