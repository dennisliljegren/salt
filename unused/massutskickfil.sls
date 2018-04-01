{% for usr in ['jimmy', 'marcus', 'daniel', 'dennis', 'tora', 'jennie', 'simone'] %}
Create test directory for {{ usr }}:
  file.directory:
    - name: /home/{{ usr }}/test
    - user: {{ usr }}
    - group: {{ usr }}
    - mode: 755
deploy the textdokument file to {{ usr }}:
  file.managed:
    - name: /home/{{ usr }}/test/textdokument.hemlig
    - source: salt://textdokument.hemlig
    - user: {{ usr }}
    - group: {{ usr }}
    - mode: 755
{% endfor %}