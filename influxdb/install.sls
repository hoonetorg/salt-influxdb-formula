# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "influxdb/map.jinja" import influxdb with context %}

influxdb_install__pkg:
  pkg.installed:
    - pkgs: {{ influxdb.pkgs }}
