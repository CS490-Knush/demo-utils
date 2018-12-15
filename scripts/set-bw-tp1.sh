curl -X PUT -u admin:admin http://172.17.0.2:8181/restconf/config/alto-bwmonitor:config-capacity/capacity/openflow:1:2 -H 'Content-type: application/json' -d '{"capacity": {"port-id":"openflow:1:2", "capacity": 5000}}'

curl -X PUT -u admin:admin http://172.17.0.2:8181/restconf/config/alto-bwmonitor:config-capacity/capacity/openflow:2:1 -H 'Content-type: application/json' -d '{"capacity": {"port-id":"openflow:2:1", "capacity": 5000}}'

curl -X PUT -u admin:admin http://172.17.0.2:8181/restconf/config/alto-bwmonitor:config-capacity/capacity/openflow:1:1 -H 'Content-type: application/json' -d '{"capacity": {"port-id":"openflow:1:1", "capacity": 10000}}'

curl -X PUT -u admin:admin http://172.17.0.2:8181/restconf/config/alto-bwmonitor:config-capacity/capacity/openflow:2:2 -H 'Content-type: application/json' -d '{"capacity": {"port-id":"openflow:2:2", "capacity": 10000}}'

curl -X PUT -u admin:admin http://172.17.0.2:8181/restconf/config/alto-bwmonitor:config-capacity/capacity/openflow:2:3 -H 'Content-type: application/json' -d '{"capacity": {"port-id":"openflow:2:3", "capacity": 10000}}'
