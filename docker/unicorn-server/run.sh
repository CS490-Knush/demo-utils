sudo docker run \
    -d \
    -ti \
    --rm \
    --name unicorn \
    -p 6633:6633 \
    -p 8181:8181 \
    -p 80:9000 \
    -v $(pwd)/config/web.xml:/opt/unicorn-server/WEB-INF/web.xml \
    -v $(pwd)/config/server.json:/opt/unicorn-server/WEB-INF/classes/server.json \
    -v $(pwd)/config/mock.json:/opt/unicorn-server/WEB-INF/classes/adapter/adapter.json \
    -v $(pwd)/config/orchestrators.json:/opt/unicorn-server/WEB-INF/classes/orchestrator/orchestrator.json \
    fno2010/unicorn-server:odl-boron-sr4
