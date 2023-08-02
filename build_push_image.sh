# Membuat docker image dari dockerfile dengan nama item-app dan tag:v1
docker build -t item-app:v1 .

# Melihat daftar image 
docker image list --all

# Mengubah nama image yang sudah dibuat menjadi sesuai nama repository Docker Hub
docker tag item-app:v1 zakyfatih/submission-1:v1

# Melakukan login ke Docker Hub dengan menggunakan cmd variable PASSWORD_DOCKER_HUB
echo $PASSWORD_DOCKER_HUB | docker login -u zakyfatih --password-stdin

# Mempush image ke Docker Hub
docker push zakyfatih/submission-1:v1