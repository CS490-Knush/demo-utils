#!/bin/bash
echo "Setting default path manager..."
curl -v -u admin:admin -X PUT -H 'Content-type: application/json' -d '{"alto-pathmanager:path-manager": {"path": []}}' http://localhost:8181/restconf/config/alto-pathmanager:path-manager

