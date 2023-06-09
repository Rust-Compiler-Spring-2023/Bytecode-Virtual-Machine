FROM rust:latest
WORKDIR /app/src
COPY . /app/
RUN apt-get update && apt-get install -y openssl
RUN apt-get update && apt-get install -y vim
RUN cargo build --release
COPY run.sh /app/
CMD ["/bin/bash", "/app/run.sh"]
