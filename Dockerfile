FROM ghcr.io/scrtlabs/localsecret:v1.6.0-alpha.4
RUN curl https://sh.rustup.rs -sSf | sh -s -- -q -y
ENV PATH="/root/.cargo/bin:${PATH}"
RUN rustup default nightly
RUN rustup target add wasm32-unknown-unknown
RUN apt install binaryen -y
RUN apt install clang -y
