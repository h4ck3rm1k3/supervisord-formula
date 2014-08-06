
{% from "supervisord/map.jinja" import supervisord with context %}

supervisord:
  pip.installed:
    - name: {{ supervisord.pkg }}
  #pkg.installed:
  # - name: {{ supervisord.pkg }}
