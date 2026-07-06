#!/bin/sh

# Replace the variables with the environment variables (with defaults applied from Dockerfile ENV)
sed -i "s/\${BACKEND_TARGET}/$BACKEND_TARGET/g" /etc/prometheus/prometheus.yml
sed -i "s/\${BACKEND_JOB_NAME}/$BACKEND_JOB_NAME/g" /etc/prometheus/prometheus.yml

# Execute the Prometheus binary with all arguments
exec /bin/prometheus \
      --config.file=/etc/prometheus/prometheus.yml \
      --storage.tsdb.path=/prometheus \
      --storage.tsdb.retention.time=15d \
      --web.console.libraries=/usr/share/prometheus/console_libraries \
      --web.console.templates=/usr/share/prometheus/consoles \
      --web.external-url=http://localhost:9090 \
      --log.level=info \
      --log.format=json
