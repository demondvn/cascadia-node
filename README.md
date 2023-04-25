# cascadia-node

Not test Yet!

# Build
    docker build -t cascadia .
# Run
    docker run -it -d -v /mnt/blockstore/cascadia:/root/.cascadiad -e VALIDATOR="MonPham" --name cascadia cascadia
# Docs
[https://nodes.guru/cascadia/setup-guide/en](https://nodes.guru/cascadia/setup-guide/en)