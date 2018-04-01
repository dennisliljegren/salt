user account for {{ pillar['username'] }}:
  user.present:
    - name: {{ pillar['username'] }}
    - shell: /bin/bash
    - home: /home/{{ pillar['username'] }}
    - password: $6$SALTsalt$YI..PAoYKeXnytukL5x5lJ8WDEr.AOCaaogusrvk9qCoNvieNOR4WeiKcVtDr0QCz9u14G9tHiBd18TY/hE/N.
    - gid: {{ pillar['groupid']}}
Create test directory for {{ pillar['username'] }}:
  file.directory:
    - name: /home/{{ pillar['username'] }}/test
    - user: {{ pillar['username'] }}
    - group: {{ pillar['username'] }}
    - mode: 755  
deploy the textdokument file to {{ pillar['username'] }}:
  file.managed:
    - name: /home/{{ pillar['username'] }}/test/textdokument.hemlig
    - source: salt://textdokument.hemlig
    - user: {{ pillar['username'] }}
    - group: {{ pillar['username'] }}
    - mode: 755
