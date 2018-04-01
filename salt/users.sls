user account for simone:
  user.present:
    - name: simone
    - shell: /bin/bash
    - home: /home/simone
    - password: $6$SALTsalt$UiZikbV3VeeBPsg8./Q5DAfq9aj7CVZMDU6ffBiBLgUEpxv7LMXKbcZ9JSZnYDrZQftdG319XkbLVMvWcF/Vr/
Create test directory for simone:
  file.directory:
    - name: /home/simone/test
    - user: simone
    - group: simone
    - mode: 755  
