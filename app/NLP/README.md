# NLP

Mecab, Juman are distribution's package.

## Mecab

- [MeCab: Yet Another Part-of-Speech and Morphological Analyzer](https://taku910.github.io/mecab/)

### Example of CentOS Stream 9 / 10, Fedora 42

```bash
dnf install mecab mecab-ipadic
```

ipadic

### Example of Ubuntu 22.04 / 24.04

```bash
apt-get update
apt-get install mecab
```

jumandic

### Example of Docker

```bash
docker compose run -it --rm mecab bash
mecab
```

ipadic

## Juman

CentOS Stream 9 / 10, Fedora 42 is not conatin Juman.

### Example of Ubuntu 24.04

```bash
apt update
apt install juman juman-dic
```

but no output juman cmd.

### Example of Docker

## Juman++

- [kunlp/jumanpp - Docker Image | Docker Hub](https://hub.docker.com/r/kunlp/jumanpp)

```bash
docker pull kunlp/jumanpp:ubuntu

docker run --name jumanpp -it --rm kunlp/jumanpp:ubuntu
jumanpp
```

## kwja

- [kunlp/kwja - Docker Image | Docker Hub](https://hub.docker.com/r/kunlp/kwja)

Very slow

Why AMD64 image is GB, ARM64 is MB

```bash
docker run --name kwja -it -d --rm kunlp/kwja:ubuntu
```

## ginza

- [GiNZA - Japanese NLP Library | Universal Dependenciesに基づくオープンソース日本語NLPライブラリ](https://megagonlabs.github.io/ginza/)

Not tested

 pip install -U ginza ja_ginza

















