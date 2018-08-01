FROM ubuntu:16.04
RUN apt-get update && apt-get install -y \
    curl \
  && rm -rf /var/lib/apt/lists/* \
  && curl -O https://frontend.bredbandskollen.se/download/bbk-cli_1.0.0_amd64.deb \
  && dpkg -i bbk-cli_1.0.0_amd64.deb \
  && rm bbk-cli_1.0.0_amd64.deb
ENTRYPOINT ["bbk_cli"]
