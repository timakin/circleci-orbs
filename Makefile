ORB_CMD       := circleci orb
VALIDATE_CMD  := ${ORB_CMD} validate
PUBLISH_CMD   := ${ORB_CMD} publish
GO_MODULE_TAG := 0.0.5
REVIEWDOG_TAG := 0.0.1

.PHONY: publish-go-module
publish-go-module:
	${PUBLISH_CMD} src/go-module/orb.yml timakin/go-module@${GO_MODULE_TAG} --token ${CIRCLE_API_TOKEN} 2>/dev/null

.PHONY: reviewdog
publish-reviewdog:
	${PUBLISH_CMD} src/reviewdog/orb.yml timakin/reviewdog@${REVIEWDOG_TAG} --token ${CIRCLE_API_TOKEN} 2>/dev/null
