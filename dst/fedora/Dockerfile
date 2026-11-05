# docker build ./ -t myfedora:45
# docker run -d --rm -ti --name fedora myfedora:45

FROM quay.io/fedora/fedora:45
RUN \
--mount=type=cache,target=/var/cache/libdnf5 \
--mount=type=cache,target=/var/lib/dnf \
dnf -y upgrade && dnf -y install bash-completion bind-utils hadolint iperf iperf3 jq pylint python3-ansible-lint python3-pip ShellCheck traceroute wget whois yamllint