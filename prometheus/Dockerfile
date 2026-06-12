FROM prom/prometheus:v3.3.0

COPY prometheus.yml /etc/prometheus/prometheus.yml

ENV BACKEND_TARGET="opengradhub-backend.railway.internal:4000"
ENV BACKEND_JOB_NAME="opengradhub-backend"

COPY entrypoint.sh /etc/prometheus/entrypoint.sh

EXPOSE 9090

ENTRYPOINT ["/bin/sh", "/etc/prometheus/entrypoint.sh"]

