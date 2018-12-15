bw = {
	"1:1": "50000",
	"1:2": "50000",
	"1:3": "50000",
	"2:1": "50000",
	"2:2": "50000",
	"3:1": "50000",
	"3:2": "50000",
	"3:3": "50000",
	"4:1": "50000",
	"4:2": "50000",
	"5:1": "50000",
	"5:2": "50000",
	"6:1": "50000",
	"6:2": "50000",
	"6:3": "50000",
	"7:1": "50000",
	"7:2": "50000",
	"8:1": "50000",
	"8:2": "50000",
	"8:3": "50000",

	"4:3": "20000",
	"5:3": "20000"
}

for ports, capacity in bw.items():
	curl  = "curl -X PUT -u admin:admin " + \
	"http://172.17.0.2:8181/restconf/config/alto-bwmonitor:config-capacity/capacity/openflow:%s " + \
	"-H 'Content-type: application/json' " + \
	"-d '{\"capacity\": {\"port-id\":\"openflow:%s\", " + \
	"\"capacity\": %s}}'"
	
	print(curl % (ports, ports, capacity))


