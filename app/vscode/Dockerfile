FROM quay.io/fedora/fedora:43

COPY --from=certs certificate.pem /etc/pki/ca-trust/source/anchors/certificate.crt
ENV NODE_EXTRA_CA_CERTS=/etc/pki/ca-trust/source/anchors/certificate.crt
RUN update-ca-trust extract

RUN rpm --import https://packages.microsoft.com/keys/microsoft.asc
COPY files/vscode.repo /etc/yum.repos.d/vscode.repo
RUN \
  --mount=type=cache,target=/var/cache/libdnf5 \
  --mount=type=cache,target=/var/lib/dnf \
  dnf upgrade -y && dnf -y install git glibc-langpack-ja code

RUN code --no-sandbox --user-data-dir=/root/vscode --locale ja \
  --install-extension ms-ceintl.vscode-language-pack-ja \
  --install-extension ms-azuretools.vscode-docker \
  --install-extension mosapride.zenkaku

COPY files/.gitconfig /root/.gitconfig

ENV LANGUAGE="ja_JP:ja" LC_ALL="ja_JP.UTF-8"
ENV TZ="Asia/Tokyo"

EXPOSE 8000
