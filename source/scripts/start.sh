#!/bin/bash

bash -vx /opt/sh/prometheus/mate/scripts/start-daemon.sh
cd ${GRAFANA_HOME}/mate/app
bash -vx /opt/sh/grafana/mate/scripts/start-daemon.sh
tail -f /dev/null