#!/bin/bash

# kmeans_input.txt
sudo docker cp gen_static/static/ mn.st3:/computation_node
sudo docker cp gen_static/static/ mn.st4:/computation_node

# chmod
sudo docker exec mn.c1 chmod +x /bin/start_server.sh
sudo docker exec mn.c2 chmod +x /bin/start_server.sh
sudo docker exec mn.st3 chmod +x /bin/start_server.sh
sudo docker exec mn.st4 chmod +x /bin/start_server.sh

# start servers
sudo docker exec -d mn.c1 /bin/start_server.sh
sudo docker exec -d mn.c2 /bin/start_server.sh
sudo docker exec -d mn.st3 /bin/start_server.sh
sudo docker exec -d mn.st4 /bin/start_server.sh


