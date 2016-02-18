# -*- coding: utf-8 -*-
# vim: ft=sls

include:
  - influxdb.install
  - influxdb.config
  - influxdb.service

extend:
  influxdb_config__conffile:
    file:
      - require:
        - pkg: influxdb_install__pkg
  influxdb_service__service:
    service:
      - watch:
        - file: influxdb_config__conffile
      - require:
        - pkg: influxdb_install__pkg

