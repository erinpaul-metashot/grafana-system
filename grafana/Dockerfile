FROM grafana/grafana-oss:11.6.0

# copy the datasources and dashboards
COPY grafana-datasources.yml /etc/grafana/provisioning/datasources/datasources.yml
COPY dashboards.yml /etc/grafana/provisioning/dashboards/dashboards.yml
COPY dashboards/ /etc/grafana/dashboards/

ENV GF_INSTALL_PLUGINS=grafana-piechart-panel,grafana-worldmap-panel,grafana-clock-panel,grafana-simple-json-datasource,grafana-sentry-datasource

EXPOSE 3000
