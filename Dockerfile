FROM ttbb/grafana:mate AS grafana

FROM ttbb/prometheus:mate

COPY --from=grafana /opt/sh/grafana /opt/sh/grafana

COPY source /opt/sh

WORKDIR /opt/sh

RUN dnf install -yq pip && \
    dnf clean all && \
    pip install flask

ENV PROM_HOME /opt/sh/prometheus

ENV GRAFANA_HOME /opt/sh/grafana

CMD ["/usr/bin/dumb-init", "bash", "-vx","/opt/sh/scripts/start.sh"]