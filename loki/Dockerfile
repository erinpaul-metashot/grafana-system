FROM grafana/loki:3.4.2

COPY loki-config.yml /etc/loki/loki-config.yml

EXPOSE 3100 9096

CMD ["-config.file=/etc/loki/loki-config.yml", "-log.format=json"]
