FROM prom/prometheus:v3.3.0

COPY prometheus.yml /etc/prometheus/prometheus.yml

EXPOSE 9090

CMD [ "--config.file=/etc/prometheus/prometheus.yml", \
      "--storage.tsdb.path=/prometheus", \
      "--storage.tsdb.retention.time=365d", \
      "--web.console.libraries=/usr/share/prometheus/console_libraries", \
      "--web.console.templates=/usr/share/prometheus/consoles", \
      "--web.external-url=http://localhost:9090", \
      "--log.level=info"]

