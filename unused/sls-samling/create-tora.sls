user account for {{ pillar['user'] }}:
  user.present:
    - name: {{ pillar['user'] }}
    - shell: /bin/bash
    - home: /home/{{ pillar['user'] }}
    - password: {{ pillar['password'] }}
Create test directory for {{ pillar['user'] }}:
  file.directory:
    - name: /home/{{ pillar['user'] }}/test
    - user: {{ pillar['user'] }}
    - group: {{ pillar['user'] }}
    - mode: 755  
