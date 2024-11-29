################################################################################
#
# EmulationStation theme "Knulli"
#
################################################################################
# Version: Commits on November 28, 2024
ES_THEME_KNULLI_VERSION = 3f25460d3f1c12bde5a6aecd52679a214aae4d74
ES_THEME_KNULLI_SITE = $(call github,symbuzzer,es-theme-knulli,$(ES_THEME_KNULLI_VERSION))

define ES_THEME_KNULLI_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
endef

$(eval $(generic-package))
