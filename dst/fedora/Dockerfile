# docker build ./ -t myfedora:39
# docker run -d --rm -ti --name fedora myfedora:39

FROM fedora:39
RUN dnf -y update && dnf -y install bind-utils iperf iperf3 jq pylint python3-ansible-lint python3-pip traceroute wget whois yamllint