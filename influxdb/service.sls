# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "influxdb/map.jinja" import influxdb with context %}

influxdb_service__service:
  service.running:
    - name: {{ influxdb.service.name }}
    - enable: True
