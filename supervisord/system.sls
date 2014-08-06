
## supervisord.system

{% from "supervisord/map.jinja" import supervisord with context %}

include:
  - supervisord

{# TODO: extends? namespacing? #}
supervisord:
  service:
    - running
    - name: {{ supervisord.service }}
    - reload: True
    - enable: True
    - watch:
      - pip: supervisord
      - file: supervisord-conf
    - require:
      - file: supervisord-conf
      - file: supervisord-init
      - file: supervisord-logdir

supervisord-conf:
  file.managed:
    - name: {{ supervisord.config }}
    - source: salt://supervisord/files/supervisord.conf
    ##[include]\nfiles = /etc/supervisor/conf.d/*
    - mode: 0544
    - owner: root
    - group: root

supervisord-init:
  file.managed:
    - name: /etc/init.d/supervisord
    - source: salt://supervisord/files/supervisord.init.sh
    - mode: 0544
    - owner: root
    - group: root

supervisord-logdir:
  file.directory:
    - name: /var/log/supervisor
    - dir_mode: 0755
    - owner: root
    - group: root

