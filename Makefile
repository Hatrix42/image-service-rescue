DOCKER_NAMESPACE =	armbuild/
NAME =			scw-service-rescue
VERSION =		latest
VERSION_ALIASES =	14.04 trusty
TITLE =			Rescue
DESCRIPTION =		Rescue
SOURCE_URL =		https://github.com/scaleway/image-service-rescue


## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/scw-builder | bash
-include docker-rules.mk
## Here you can add custom commands and overrides
