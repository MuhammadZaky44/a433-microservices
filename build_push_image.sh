# Membuild image dari Dockefile
docker build -t zakyfatih/order-service:latest .

# Mempush hasil build image ke Docker-hub repository
docker push zakyfatih/order-service:latest

# Mengubah tag dari image untuk Dockerhub menjadi Github Container Registry
docker tag zakyfatih/order-service:latest ghcr.io/muhammadzaky44/order-service:latest

# Mempush image ke Github Container Registry
docker push ghcr.io/muhammadzaky44/order-service:latest