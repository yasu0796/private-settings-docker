# docker build ./ -t myfedora:44
# docker run -d --rm -ti --name fedora myfedora:44

FROM quay.io/fedora/fedora:44
RUN \
--mount=type=cache,target=/var/cache/libdnf5 \
--mount=type=cache,target=/var/lib/dnf \
dnf -y upgrade && dnf -y install bind-utils iperf iperf3 jq pylint python3-ansible-lint python3-pip ShellCheck traceroute wget whois yamllint