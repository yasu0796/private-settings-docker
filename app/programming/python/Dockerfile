# docker build ./ -t mypython:3
FROM python:3-slim

COPY --from=certs certificate.pem /usr/share/ca-certificates/certificate.crt
RUN dpkg-reconfigure -p critical ca-certificates
RUN sed -i 's/^!certificate.crt/certificate.crt/' /etc/ca-certificates.conf
RUN dpkg-reconfigure -p critical ca-certificates

COPY scripts/requirements.txt .

# --no-cache-dir as same size as --mount=type=cache,mode=0755,target=/root/.cache/pip
# RUN --mount=type=cache,mode=0755,target=/root/.cache/pip pip install -r requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
RUN cat /usr/share/ca-certificates/certificate.crt >> $(python -m certifi)