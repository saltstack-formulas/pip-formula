{% from "pip/map.jinja" import pip with context %}

include:
  - pip

pip_extensions:
  pkg.installed:
    - pkgs: {{ pip.dev_pkgs }}
    - require:
      - pkg: pip
