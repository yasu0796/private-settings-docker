# docker build ./ -t myfedora:42
# docker run -d --rm -ti --name fedora myfedora:42

FROM fedora:42
RUN \
--mount=type=cache,target=/var/cache/dnf \
--mount=type=cache,target=/var/lib/dnf \
dnf -y upgrade && dnf -y install bind-utils iperf iperf3 jq pylint python3-ansible-lint python3-pip traceroute wget whois yamllint