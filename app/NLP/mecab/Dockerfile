# docker build ./ -t mymecab:2604
# docker run --rm -ti --name mecab mymecab:2604

FROM ubuntu:26.04

RUN \
--mount=type=cache,target=/var/cache/apt,sharing=locked \
--mount=type=cache,target=/var/lib/apt,sharing=locked \
apt-get -y update

RUN \
--mount=type=cache,target=/var/cache/apt,sharing=locked \
--mount=type=cache,target=/var/lib/apt,sharing=locked \
apt-get -y --no-install-recommends install autoconf automake ca-certificates git gcc g++ make

RUN \
# --mount=type=cache,target=/root/mecab,sharing=locked \
git clone https://github.com/taku910/mecab.git --depth=1 /root/mecab

WORKDIR /root/mecab/mecab
RUN ./configure --with-charset=utf8 && make install

WORKDIR /root/mecab/mecab-ipadic
RUN ldconfig && ./configure --with-charset=utf8 && make install

WORKDIR /

# CMD ["/usr/local/bin/mecab"]