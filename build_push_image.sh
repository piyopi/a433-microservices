#/bin/bash
# Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1.
docker build -t item-app:v1 .
# Melihat daftar image di lokal.
docker images

# Mengubah nama image agar sesuai dengan format Docker Hub (atau GitHub Packages bila menerapkan saran keempat).
# docker tag item-app:v1 piyopi/item-app:v1
# Login ke Docker Hub (atau GitHub Packages bila menerapkan saran keempat) via Terminal.
# echo $PASSWORD_DOCKER_HUB | docker login -u piyopi --password-stdin
# Mengunggah image ke Docker Hub (atau GitHub Packages bila menerapkan saran keempat).
# docker push piyopi/item-app:v1

# Mengubah nama image agar sesuai dengan format Docker Hub (atau GitHub Packages bila menerapkan saran keempat).
docker tag item-app:v1 ghcr.io/piyopi/item-app:v1
# Login ke Docker Hub (atau GitHub Packages bila menerapkan saran keempat) via Terminal.
echo $PASSWORD_GITHUB | docker login ghcr.io -u piyopi --password-stdin
# Mengunggah image ke Docker Hub (atau GitHub Packages bila menerapkan saran keempat).
docker push ghcr.io/piyopi/item-app:v1