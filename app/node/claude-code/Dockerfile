FROM quay.io/fedora/fedora:44

COPY --from=certs certificate.pem /etc/pki/ca-trust/source/anchors/certificate.crt
ENV NODE_EXTRA_CA_CERTS=/etc/pki/ca-trust/source/anchors/certificate.crt
RUN update-ca-trust extract

RUN curl -fsSL https://claude.ai/install.sh | bash

CMD ["/root/.local/bin/claude"]