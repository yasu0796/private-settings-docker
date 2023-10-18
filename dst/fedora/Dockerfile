# docker build ./ -t myfedora:38
# docuer run -d --rm -ti --name fedora myfedora:38

FROM fedora:38
RUN dnf -y update && dnf -y install bind-util iperf iperf3 jq pylint python3-ansible-lint python3-pip traceroute whois yamllint