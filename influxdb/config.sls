# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "influxdb/map.jinja" import influxdb with context %}

influxdb_config__config:
  file.managed:
    - name: {{ influxdb.config }}
    - source: salt://influxdb/files/influxdb.conf.jinja
    - mode: 644
    - user: root
    - group: root
