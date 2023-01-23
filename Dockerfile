FROM ghcr.io/scrtlabs/localsecret:v1.7.0-beta.2
RUN curl https://sh.rustup.rs -sSf | sh -s -- -q -y
ENV PATH="/root/.cargo/bin:${PATH}"
RUN rustup default nightly
RUN rustup target add wasm32-unknown-unknown
RUN apt-get update &&  \
    apt-get install -y --no-install-recommends \
    clang-10 && \
    rm -rf /var/lib/apt/lists/*
RUN apt update && apt install
RUN apt install binaryen -y
RUN apt install clang -y
RUN apt-get install nano
ENV TERM xterm
VOLUME /root