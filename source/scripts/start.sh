#!/bin/bash

bash -vx /opt/sh/prometheus/hzj/scripts/start-daemon.sh
bash -vx /opt/sh/grafana/hzj/scripts/start-daemon.sh
tail -f /dev/null