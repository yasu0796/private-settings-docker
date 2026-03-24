# same as claude-code 

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

# nanoclaw original
RUN \
install -m 0755 -d /etc/apt/keyrings && \
curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc && \
chmod 644 /etc/apt/keyrings/docker.asc

RUN echo \
"Types: deb\n\
URIs: https://download.docker.com/linux/debian\n\
Suites: trixie\n\
Components: stable\n\
Signed-By: /etc/apt/keyrings/docker.asc" \
> /etc/apt/sources.list.d/docker.sources

RUN \
--mount=type=cache,target=/var/cache/apt,sharing=locked \
--mount=type=cache,target=/var/lib/apt,sharing=locked \
apt-get -y update

RUN \
--mount=type=cache,target=/var/cache/apt,sharing=locked \
--mount=type=cache,target=/var/lib/apt,sharing=locked \
apt-get -y --no-install-recommends install git python3 python3-dev make gcc g++ docker-ce docker-compose-plugin

RUN git clone --depth 1 --single-branch https://github.com/qwibitai/nanoclaw.git /nanoclaw

WORKDIR /nanoclaw

CMD ["/root/.local/bin/claude"]