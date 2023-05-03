VERSION=v1.2.1

docker_%:
	docker build --platform=$(*) . -t kuritka/netutils:$(VERSION)-$(*)
	docker push kuritka/netutils:$(VERSION)-$(*)

# It can happen that a layer from one architecture will be shared with a layer from another architecture
# and `docker image inspect` will generate the wrong architecture. You take care of deleting all layers and
# then rebuild for the wrong architecture
docker-push: docker_arm64 docker_amd64
