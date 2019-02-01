ORB_CMD       := circleci orb
VALIDATE_CMD  := ${ORB_CMD} validate
PUBLISH_CMD   := ${ORB_CMD} publish
GO_MODULE_TAG := 0.0.1

.PHONY: publish
publish:
	${PUBLISH_CMD} src/go-module/orb.yml timakin/go-module@${GO_MODULE_TAG}
