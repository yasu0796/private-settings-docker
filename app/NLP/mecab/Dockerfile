FROM ubuntu:24.04
RUN apt update && apt -y install git gcc g++ make
RUN git clone https://github.com/taku910/mecab.git --depth=1 /root/mecab
RUN cd /root/mecab/mecab && ./configure --with-charset=utf8 && make install
RUN ldconfig && cd /root/mecab/mecab-ipadic && ./configure --with-charset=utf8 && make install