FROM debian:bullseye-slim

# Install prerequisites: fortune + cowsay + netcat
RUN apt-get update && apt-get install -y fortune-mod cowsay netcat-openbsd \
    && rm -rf /var/lib/apt/lists/*

# Ensure fortune and cowsay are available
ENV PATH="/usr/games:${PATH}"

WORKDIR /app
COPY . .
RUN chmod +x wisecow.sh

EXPOSE 4499

CMD ["./wisecow.sh"]

