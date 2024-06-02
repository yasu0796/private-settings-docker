FROM fedora:40
RUN rpm --import https://packages.microsoft.com/keys/microsoft.asc
COPY vscode.repo /etc/yum.repos.d/vscode.repo
RUN dnf upgrade -y && dnf -y install git glibc-langpack-ja code
RUN code --no-sandbox --user-data-dir=/root/vscode --locale ja \
  --install-extension ms-ceintl.vscode-language-pack-ja \
  --install-extension ms-azuretools.vscode-docker \
  --install-extension mosapride.zenkaku
COPY .gitconfig /root/.gitconfig

ENV LANGUAGE="ja_JP:ja" LC_ALL="ja_JP.UTF-8"
ENV TZ="Asia/Tokyo"

EXPOSE 8000
