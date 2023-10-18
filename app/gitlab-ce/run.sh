#docker compose up -d
#docker exec -it fedora-fedora-1 bash

docker run --detach \
  --hostname gitlab.example.com \
  --publish 443:443 --publish 80:80 --publish 22022:22 \
  --name gitlab \
  --restart always \
  --shm-size 256m \
   --platform  linux/amd64  \
  gitlab/gitlab-ce:latest
#docker exec gitlab cat /etc/gitlab/initial_root_password
