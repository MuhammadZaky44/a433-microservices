# Membuild image dari Dockefile
docker build -t zakyfatih/shipping-service:latest .

# Mempush hasil build image ke Docker-hub repository
docker push zakyfatih/shipping-service:latest

# Mengubah tag dari image untuk Dockerhub menjadi Github Container Registry
docker tag zakyfatih/shipping-service:latest ghcr.io/muhammadzaky44/shipping-service:latest

# Mempush image ke Github Container Registry
docker push ghcr.io/muhammadzaky44/shipping-service:latest