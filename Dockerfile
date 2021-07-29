FROM ttbb/grafana:stand-alone AS grafana

FROM ttbb/prometheus:stand-alone

COPY --from=grafana /opt/sh/grafana /opt/sh/grafana

COPY source /opt/sh

WORKDIR /opt/sh

ENV PROM_HOME /opt/sh/prometheus

ENV GRAFANA_HOME /opt/sh/grafana

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/scripts/start.sh"]