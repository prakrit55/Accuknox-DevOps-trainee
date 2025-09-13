FROM debian:stable-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    bash \
    netcat \
    fortunes \
    cowsay \
 && rm -rf /var/lib/apt/lists/*

COPY wisecow.sh .
RUN chmod +x wisecow.sh
EXPOSE 4499

CMD ["./wisecow.sh"]
