up:
	docker-compose up -d

down:
	docker-compose down


kuma-cp:
	env \
		KUMA_MODE=zone KUMA_MULTIZONE_ZONE_NAME=immanent \
		KUMA_MULTIZONE_ZONE_GLOBAL_ADDRESS=grpcs://169.254.32.1:5685 \
		kuma-cp run
