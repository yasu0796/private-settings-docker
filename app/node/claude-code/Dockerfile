FROM node:24-trixie-slim

COPY --from=certs certificate.pem /usr/share/ca-certificates/certificate.crt
ENV NODE_EXTRA_CA_CERTS=/usr/share/ca-certificates/certificate.crt

RUN \
--mount=type=cache,target=/var/cache/apt,sharing=locked \
--mount=type=cache,target=/var/lib/apt,sharing=locked \
rm -f /etc/apt/apt.conf.d/docker-clean && apt-get -y update
RUN \
--mount=type=cache,target=/var/cache/apt,sharing=locked \
--mount=type=cache,target=/var/lib/apt,sharing=locked \
apt-get -y --no-install-recommends install curl ca-certificates

RUN curl -fsSL https://claude.ai/install.sh | bash

CMD ["/root/.local/bin/claude"]