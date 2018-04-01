user account for jennie:
  user.present:
    - name: jennie
    - shell: /bin/bash
    - home: /home/jennie
    - password: $6$SALTsalt$UiZikbV3VeeBPsg8./Q5DAfq9aj7CVZMDU6ffBiBLgUEpxv7LMXKbcZ9JSZnYDrZQftdG319XkbLVMvWcF/Vr/
    - groups:
      - root
Create test directory for jennie:
  file.directory:
    - name: /home/jennie/test
    - user: jennie
    - group: jennie
    - mode: 755  
