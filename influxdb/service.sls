# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "influxdb/map.jinja" import influxdb with context %}

influxdb_service__service:
  service.{{ influxdb.service.state }}:
    - name: {{ influxdb.service.name }}
{% if influxdb.service.state in [ 'running', 'dead' ] %}
    - enable: {{ influxdb.service.enable }}
{% endif %}

