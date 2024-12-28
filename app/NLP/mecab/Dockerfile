FROM ubuntu:24.04
RUN apt-get update && apt-get -y install git gcc g++ make
RUN git clone https://github.com/taku910/mecab.git --depth=1 /root/mecab
WORKDIR /root/mecab/mecab
RUN ./configure --with-charset=utf8 && make install
WORKDIR /root/mecab/mecab-ipadic
RUN ldconfig && ./configure --with-charset=utf8 && make install