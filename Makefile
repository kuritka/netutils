
docker:
	docker build . -t kuritka/netutils:v1.0.0
	docker push kuritka/netutils:v1.0.0

docker_amd64:
	docker build . -t kuritka/netutils:v1.0.0-amd64 --platform=amd64
	docker push kuritka/netutils:v1.0.0-amd64

docker_arm64:
	docker build . -t kuritka/netutils:v1.0.0-arm64 --platform=arm64
	docker push kuritka/netutils:v1.0.0-arm64
