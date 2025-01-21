STEAMPIPE_INSTALL_DIR ?= ~/.steampipe
BUILD_TAGS = netgo
LD_FLAGS := -s -w
install:
	go build -trimpath -o $(STEAMPIPE_INSTALL_DIR)/plugins/hub.steampipe.io/plugins/turbot/slack@latest/steampipe-plugin-slack.plugin -tags "${BUILD_TAGS}" -ldflags '$(LD_FLAGS)' *.go
