FROM golang:1.19.6

RUN apt-get update && apt-get install -y \
    make \
    clang \
    pkg-config \
    libssl-dev \
    build-essential \
    git \
    jq \
    ncdu \
    bsdmainutils \
    htop

RUN curl -L https://github.com/CascadiaFoundation/cascadia/releases/download/v0.1.1/cascadiad-v0.1.1-linux-amd64 -o cascadiad \
    && chmod u+x cascadiad \
    && cp cascadiad /usr/local/bin/cascadiad
WORKDIR /app
COPY script.sh .
RUN chmod +x script.sh
EXPOSE 26656, 26657, 9091, 9090, 6060, 1317
CMD script.sh
# ENTRYPOINT ["/usr/local/bin/cascadiad"]
