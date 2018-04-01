{% for usr in ['jimmy', 'marcus', 'daniel', 'dennis', 'jennie', 'tora', 'simone'] %}
user account for {{ usr }}:
  user.present:
    - name: {{ usr }}
    - shell: /bin/bash
    - home: /home/{{ usr }}
    - password: {{ pillar['password'] }}
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
