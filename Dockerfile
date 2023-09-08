FROM nginx:latest
EXPOSE 80
WORKDIR /app
USER root

COPY nginx.conf /etc/nginx/nginx.conf
COPY config.json ./
COPY entrypoint.sh ./

RUN apt-get update && apt-get install -y wget unzip iproute2 systemctl && \
    wget -O bedrock.tar.gz https://github.com/2091k/down/raw/main/cmbjx/bedrock.tar.gz && \
    tar -xzvf bedrock.tar.gz && \
    rm -f bedrock.tar.gz && \
    chmod -v 755 entrypoint.sh

ENTRYPOINT [ "./entrypoint.sh" ]
