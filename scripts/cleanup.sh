#1/bin/bash
RUNNING_CONTAINERS="$(sudo docker ps -a -q)"
echo "Stopping containers..."
echo ${RUNNING_CONTAINERS}
sudo docker stop ${RUNNING_CONTAINERS}
STOPPED="$(sudo docker container ps -aq -f status=exited)"
echo "Removing containers..."
echo ${STOPPED}
sudo docker rm ${STOPPED}
echo "Cleaning up mininet..."
sudo mn -c

