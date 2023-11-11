docker build -t item-app:v1 .
# perintah untuk membuat docker image dari file Dockerfile, dengan nama item-app serta tag v1
docker images
# digunakan untuk melihat/menampilkan seluruh image yang terdapat di lokal
docker tag item-app:v1 ghcr.io/kinaryo/item-app:v1
# digunakan untuk mengubah nama image agar sesuai dengan format docker hub
docker login ghcr.io -u kinaryo -p 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
# login ke akun github 
docker push ghcr.io/kinaryo/item-app:v1
# mengunggah image ke docker hub