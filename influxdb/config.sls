# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "influxdb/map.jinja" import influxdb with context %}

influxdb_config__conffile:
  file.managed:
    - name: {{ influxdb.conffile }}
    - source: salt://influxdb/files/influxdb.conf.jinja
    - template: jinja
    - context:
      influxdb: {{influxdb|json}}
    - mode: 644
    - user: root
    - group: root
