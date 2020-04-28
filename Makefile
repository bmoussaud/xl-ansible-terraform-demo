exportxlr:
	./xlw  --config config.yaml generate xl-release -e  -o  -f 'xebialabs/release/environments.yaml'
	./xlw  --config config.yaml generate xl-release -a  -o  -f 'xebialabs/release/applications.yaml'
	./xlw  --config config.yaml generate xl-release -t  -p 'Terraform' -f 'xebialabs/release/templates.yaml' -n 'Provisioning a new Cloud Infrastructure AWS' -o -m -r

importxlr:
	./xlw  --config config.yaml apply -f xebialabs/release.yaml


