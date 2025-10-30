docker run --detach \
  --hostname gitlab.example.com \
  --publish 443:443 --publish 80:80 --publish 22022:22 \
  --name gitlab \
  --restart always \
  --shm-size 256m \
  gitlab/gitlab-ce:latest
#docker exec gitlab cat /etc/gitlab/initial_root_password
