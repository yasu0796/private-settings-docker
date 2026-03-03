FROM ruby:4-slim

COPY --from=certs certificate.pem /usr/share/ca-certificates/certificate.crt
RUN dpkg-reconfigure -p critical ca-certificates
RUN sed -i 's/^!certificate.crt/certificate.crt/' /etc/ca-certificates.conf
RUN dpkg-reconfigure -p critical ca-certificates

RUN gem install httparty