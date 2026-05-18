FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    curl \
    bash \
    coreutils \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY run_validator.sh .
RUN chmod +x run_validator.sh

CMD ["./run_validator.sh"]
