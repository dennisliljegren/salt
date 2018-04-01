dennis_key:
  ssh_auth.present:
    - user: dennis
    - enc: ssh-rsa
    - name: dennis
    - source: salt://files/pub_key
