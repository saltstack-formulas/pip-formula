{% from "pip/map.jinja" import pip with context %}

pip:
  pkg.installed:
    - name: {{ pip.pip_pkg }}
