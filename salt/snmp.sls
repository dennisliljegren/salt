Make sure the snmp service is running and enable it to start at boot:
  service.running:
    - name: snmpd
    - enable: True
Make sure firewall is open for snmp:
  firewalld.present:
    - name: public
    - ports:
      - 161/udp
      - 22/tcp
#deploy configuration for snmp:
#  file.managed:
#    - name: /etc/sysconfig/snmpd
#    - source: salt://templates/snmpd
