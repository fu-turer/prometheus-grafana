#!/bin/bash

bash -vx /opt/sh/prometheus/mate/scripts/start-daemon.sh
bash -vx /opt/sh/grafana/mate/scripts/start-daemon.sh
tail -f /dev/null