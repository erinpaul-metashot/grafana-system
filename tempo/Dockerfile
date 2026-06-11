FROM grafana/tempo:2.1.1


COPY tempo.yml /etc/tempo/tempo.yml

# ports:
#   - "14268:14268"  # jaeger ingest
#   - "3200:3200"   # tempo
#   - "9095:9095" # tempo grpc
#   - "4317:4317"  # otlp grpc
#   - "4318:4318"  # otlp http
#   - "9411:9411"   # zipkin

# Tempo listens on the following ports:
EXPOSE 3200 9095 4317 4318 14268 9411

CMD ["-config.file=/etc/tempo/tempo.yml"]
