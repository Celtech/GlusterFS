build:
	docker buildx rm gluster_builder || true
	docker buildx create --name gluster_builder --use
	docker buildx build --no-cache --push --platform linux/amd64 -t lulceltech/gluster:latest ./docker
	docker buildx rm acme_builder || true
