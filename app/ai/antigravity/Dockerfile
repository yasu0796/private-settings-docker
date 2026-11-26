FROM quay.io/fedora/fedora:45

COPY --from=certs certificate.pem /etc/pki/ca-trust/source/anchors/certificate.crt
ENV NODE_EXTRA_CA_CERTS=/etc/pki/ca-trust/source/anchors/certificate.crt
RUN update-ca-trust extract

RUN \
  --mount=type=cache,target=/var/cache/libdnf5 \
  --mount=type=cache,target=/var/lib/dnf \
  dnf -y install bind-utils diff fd-find git glibc-langpack-ja jq pylint python3 python3-pip ripgrep tree yq which

RUN curl -fsSL https://antigravity.google/cli/install.sh | bash

CMD ["/root/.local/bin/agy"]