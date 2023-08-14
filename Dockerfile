FROM python:base
ENV CRONICLE_base_app_url 'http://localhost:3012'
ENV CRONICLE_WebServer__http_port 3012
ENV CRONICLE_WebServer__https_port 443
ENV CRONICLE_web_socket_use_hostnames 1
ENV CRONICLE_server_comm_use_hostnames 1
ENV CRONICLE_web_direct_connect 0
RUN apt update && apt install perl -y \
        git \
        gnupg
ADD https://github.com/krallin/tini/releases/download/v0.19.0/tini /tini
ADD https://github.com/krallin/tini/releases/download/v0.19.0/tini.asc /tini.asc
RUN gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7 \
 && gpg --batch --verify /tini.asc /tini
RUN chmod +x /tini
ADD entrypoint.sh /entrypoint.sh
EXPOSE 3012
ENTRYPOINT ["/tini", "--"]
CMD ["bash", "/entrypoint.sh"]
