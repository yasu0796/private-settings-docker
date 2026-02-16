FROM node:24-trixie-slim

COPY --from=certs certificate.pem /usr/share/ca-certificates/certificate.crt
ENV NODE_EXTRA_CA_CERTS=/usr/share/ca-certificates/certificate.crt

RUN \
--mount=type=cache,target=/root/.npm \
npm install -g @google/gemini-cli
CMD ["gemini"]
