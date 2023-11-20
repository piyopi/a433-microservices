#/bin/bash
# Perintah untuk build Docker image dari berkas Dockerfile yang disediakan dengan nama <username-docker>/shipping-service:latest 
# docker build -t piyopi/shipping-service:latest .
# Perintah untuk login ke Docker Hub (atau GitHub Package bila menerapan saran kedua).
# echo $PASSWORD_DOCKER_HUB | docker login -u piyopi --password-stdin
# Perintah untuk push image ke Docker Hub (atau GitHub Package bila menerapan saran kedua).
# docker push piyopi/shipping-service:latest

# Perintah untuk build Docker image dari berkas Dockerfile yang disediakan dengan nama <username-docker>/shipping-service:latest 
docker build -t ghcr.io/piyopi/shipping-service:latest .
# Perintah untuk login ke Docker Hub (atau GitHub Package bila menerapan saran kedua).
echo $PASSWORD_GITHUB | docker login ghcr.io -u piyopi --password-stdin
# Perintah untuk push image ke Docker Hub (atau GitHub Package bila menerapan saran kedua).
docker push ghcr.io/piyopi/shipping-service:latest