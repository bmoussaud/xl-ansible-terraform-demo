generatexlr:
	./xlw  --config config.yaml generate xl-release -e  -o  -f 'xebialabs/release/environments.yaml'
	./xlw  --config config.yaml generate xl-release -a  -o  -f 'xebialabs/release/applications.yaml'
	./xlw  --config config.yaml generate xl-release -t  -o -p 'Cloud Infrastructure' -f 'xebialabs/release/templates.yaml' -n 'Provisioning a new Cloud Infrastructure AWS' 
	./xlw  --config config.yaml generate xl-release -t  -o -p 'Cloud Infrastructure' -f 'xebialabs/release/templates_unprovisioning.yaml' -n 'Unprovisioning an AWS Cloud Infrastructure' 
	./xlw  --config config.yaml generate xl-release -t  -o -p 'PetPortal' -f 'xebialabs/release/templates_cd.yaml' -n 'Continuous Delivery' 

applyxlr:
	./xlw  --config config.yaml apply -f xebialabs/release.yaml

applyxld:
	./xlw  --config config.yaml apply -f xebialabs/xxxx


