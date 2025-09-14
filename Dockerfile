FROM debian:stable-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    bash \
    netcat-openbsd \
    fortune-mod \
    cowsay

WORKDIR /app

COPY wisecow.sh /app/wisecow.sh
RUN chmod +x /app/wisecow.sh

EXPOSE 4499

CMD ["./wisecow.sh"]
