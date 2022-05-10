FROM ghcr.io/scrtlabs/localsecret:latest
RUN curl https://sh.rustup.rs -sSf | sh -s -- -q -y
ENV PATH="/root/.cargo/bin:${PATH}"
RUN rustup default stable
RUN rustup target add wasm32-unknown-unknown
RUN apt install binaryen -y
RUN apt install clang -y
