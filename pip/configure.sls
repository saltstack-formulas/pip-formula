{%- from "pip/map.jinja" import pip with context %}

pip-config:
  file.managed:
    - name: /etc/pip/pip.conf
    - source: salt://pip/files/pip.conf
    - template: jinja
    - makedirs: True

pip-config-enable:
  file.managed:
    - name: /etc/profile.d/pip_config.sh
    - contents: export PIP_CONFIG_FILE=/etc/pip/pip.conf


{#- This block provides the file pointed to by the cert option in the 
    config file, if provided. Note that cert_contents takes precedence 
    over cert_source. #}
    
{%- set cert_source = salt['pillar.get']('pip:config:cert_source', None) %}
{%- set cert_contents = salt['pillar.get']('pip:config:cert_contents', None) %}

{%- if cert_contents is not None %}
pip-certificate:
  file.managed:
    - name: {{ pip_cert }}
    - makedirs: True
    - contents: {{ cert_contents }}
{%- elif cert_source is not None %}
pip-certificate:
  file.managed:
    - name: {{ pip_cert }}
    - makedirs: True
    - source: {{ cert_source }}
{%- endif %}
