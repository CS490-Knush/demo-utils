bw = {
        # hosts
        "1:1": "25000",
        "3:1": "25000",
        "6:1": "25000",
        "8:1": "25000",

        # top
        "1:2": "20000",
        "2:1": "20000",
        "2:2": "20000",
        "3:2": "20000",

        # bottom
        "7:1": "20000",
        "7:2": "20000",
        "8:2": "20000",
        "6:2": "20000",

        # X
        "1:3": "25000",
        "3:3": "25000",
        "4:1": "25000",
        "4:2": "25000",
        "5:1": "25000",
        "5:2": "25000",
        "8:3": "25000",
        "6:3": "25000",

        # shared
        "4:3": "25000",
        "5:3": "25000"
}

for ports, capacity in bw.items():
	curl  = "curl -X PUT -u admin:admin " + \
	"http://172.17.0.2:8181/restconf/config/alto-bwmonitor:config-capacity/capacity/openflow:%s " + \
	"-H 'Content-type: application/json' " + \
	"-d '{\"capacity\": {\"port-id\":\"openflow:%s\", " + \
	"\"capacity\": %s}}'"
	
	print(curl % (ports, ports, capacity))


