FROM rust:latest

WORKDIR /app

COPY . .

RUN rustup default

RUN cargo install disel_cli --no-default-features --features postgres

RUN cargo install cargo-watch

CMD ["cargo","watch","--why","--","echo"]