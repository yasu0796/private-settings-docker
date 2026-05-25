FROM rust:latest

RUN git clone --depth 1 --single-branch https://github.com/ultraworkers/claw-code /claw-code
WORKDIR /claw-code/rust
RUN cargo build --workspace

CMD ["/claw-code/rust/target/debug/claw"]