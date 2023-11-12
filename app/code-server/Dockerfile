FROM fedora:39
RUN dnf upgrade -y && dnf -y install git glibc-langpack-ja
RUN curl -fsSL https://code-server.dev/install.sh | sh
RUN code-server --locale ja \
  --install-extension ms-ceintl.vscode-language-pack-ja
COPY .gitconfig /root/.gitconfig

ENV LANGUAGE="ja_JP:ja" LC_ALL="ja_JP.UTF-8"
ENV TZ="Asia/Tokyo"

EXPOSE 8080
