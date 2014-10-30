include:
  - pip

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
    config file, if specified. Note that cert_contents takes precedence
    over cert_source. #}

{%- set pip_cert = salt['pillar.get']('pip:config:global:cert', none) %}
{%- set cert_source = salt['pillar.get']('pip:cert:source', none) %}
{%- set cert_contents = salt['pillar.get']('pip:cert:contents', none) %}

{%- if pip_cert is not none %}
{%- if cert_contents is not none %}
pip-certificate:
  file.managed:
    - name: {{ pip_cert }}
    - makedirs: True
    - contents_pillar: pip:cert:contents
{%- elif cert_source is not none %}
pip-certificate:
  file.managed:
    - name: {{ pip_cert }}
    - makedirs: True
    - source: {{ cert_source }}
{%- endif %}
{%- endif %}
