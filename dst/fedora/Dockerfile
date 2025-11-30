# docker build ./ -t myfedora:43
# docker run -d --rm -ti --name fedora myfedora:43

FROM quay.io/fedora/fedora:43
RUN \
--mount=type=cache,target=/var/cache/dnf \
--mount=type=cache,target=/var/lib/dnf \
dnf -y upgrade && dnf -y install bind-utils iperf iperf3 jq pylint python3-ansible-lint python3-pip ShellCheck traceroute wget whois yamllint