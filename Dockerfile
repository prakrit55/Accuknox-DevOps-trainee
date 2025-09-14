FROM ubuntu:24.04

RUN apt-get update && apt-get install -y --no-install-recommends \
    fortune-mod \
    cowsay

WORKDIR /app

COPY wisecow.sh /app/wisecow.sh
RUN chmod +x /app/wisecow.sh

EXPOSE 4499

CMD ["./wisecow.sh"]
