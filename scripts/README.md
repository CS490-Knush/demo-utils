From `/home/anushreeagrawal/demo-utils/scripts` 
- run `./cleanup.sh`

From `/home/anushreeagrawal/demo-utils/docker/unicorn-server` 
- run `./run.sh`
- then run `docker ps should show unicorn`, you should see the Unicorn docker container
- then run `docker logs -f unicorn`
This may take a few minutes, once you see "Server:main: Started...", then you've started unicorn successfully.

From `/home/anushreeagrawal`
- run `sudo python containernet/examples/top3.py` from a tmux'd terminal
- then `containernet> d1 ping d2` should work

In a separate terminal window
- run `sudo docker exec -ti unicorn /opt/opendaylight/bin/client`
- then in the shell run `opendaylight-user@root>feature:install odl-alto-spce`
- exit the shell

From `/home/anushreeagrawal/demo-utils`
- run `. utils`
- run `subscribe_port localhost 8181`

From `/home/anushreeagrawal/demo-utils/scripts`
- run `./default-path.sh`

From  `/home/anushreeagrawal/demo-utils/scripts`
- run `sudo docker cp deploy-unicorn-routes.sh unicorn:/deploy-unicorn-routes.sh`
- run `sudo docker exec -ti unicorn bash`, 

Then from the new shell:
- run `chmod +x deploy-unicorn-routes.sh`
- run `./deploy-unicorn-routes.sh`
- exit the shell
	
From `/home/anushreeagrawal/demo-utils/scripts`
- run `./test-resource-query.sh`, should show `{"anes": [{"availbw": 10000000}], "ane-matrix": [[{"flow-id": "1"}]]}`

From `/home/anushreeagrawal/demo-utils/scripts`
- run `./set-bw-tp1.sh`
- run `./test-bw-capacity.sh` to check link bandwidths
