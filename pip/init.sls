{% from "pip/package-map.jinja" import pip with context %}

pip:
  pkg:
    - installed
    - name: {{ pip.pkg }}
