FROM quay.io/centos/centos:stream10

COPY --from=certs certificate.pem /etc/pki/ca-trust/source/anchors/certificate.crt
RUN update-ca-trust extract

RUN \
--mount=type=cache,target=/var/cache/libdnf5 \
--mount=type=cache,target=/var/lib/dnf \
dnf -y install git hostname iproute iptables-nft procps-ng python3-devel python3-pip sudo wget which bc curl dbus gawk gcc gcc-c++ gettext graphviz httpd httpd-devel iptables-services java-21-openjdk-headless libffi-devel libjpeg-turbo-devel libxml2-devel libxslt-devel mod_ssl net-tools openssh-server openssl openssl-devel pcre2-devel pkgconfig postgresql-devel psmisc python3-devel python3-pip python3-systemd redhat-rpm-config tar tcpdump unzip util-linux zlib-devel memcached sqlite

RUN git clone --depth 1 --single-branch https://opendev.org/openstack/devstack /devstack
WORKDIR /devstack

COPY local.conf /devstack/
RUN /devstack/tools/create-stack-user.sh
RUN chown -R 1000:1000 /devstack

CMD ["/sbin/init"]