# docker build ./ -t myfedora:40
# docker run -d --rm -ti --name fedora myfedora:40

FROM fedora:40
RUN \
--mount=type=cache,target=/var/cache/dnf \
--mount=type=cache,target=/var/lib/dnf \
dnf -y update && dnf -y install bind-utils iperf iperf3 jq pylint python3-ansible-lint python3-pip traceroute wget whois yamllint