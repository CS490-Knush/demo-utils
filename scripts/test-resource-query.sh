curl -X POST "http://172.17.0.2:80/experimental/v1/unicorn/resource-query" -H "accept: application/json" -H "Content-Type: application/json" -d '{"query-desc": [{"flow": {"flow-id": "1", "src-ip": "10.0.0.251", "dst-ip": "10.0.0.252"}}, {"flow": {"flow-id": "2", "src-ip": "10.0.0.251", "dst-ip": "10.0.0.253"}}]}'

