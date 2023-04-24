# cascadia-node

# Build
    docker build -t cascadia .
# Init
    docker run -it -d -v /mnt/blockstore/cascadia:/root/.cascadiad -e VALIDATOR="MonPham" --name cascadia cascadia
