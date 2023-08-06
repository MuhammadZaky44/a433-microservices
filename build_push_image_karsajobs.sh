# Membuat docker image dari dockerfile dengan nama item-app dan tag:v1
docker build -t zakyfatih/karsajobs:latest

# Mengubah nama image yang sudah dibuat menjadi sesuai nama repository Docker Hub
# docker tag karsajobs:latest zakyfatih/karsajobs:latest

# Melakukan login ke Docker Hub dengan menggunakan cmd variable PASSWORD_DOCKER_HUB
echo $PASSWORD_DOCKER_HUB | docker login -u zakyfatih --password-stdin

# Mempush image ke Docker Hub
docker push zakyfatih/karsajobs:latest