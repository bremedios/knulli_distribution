################################################################################
#
# EmulationStation theme "Knulli"
#
################################################################################
# Version: Commits on November 27, 2024
ES_THEME_KNULLI_VERSION = aef48d76bf92c9b86d19eebba349763d01edf8b9
ES_THEME_KNULLI_SITE = $(call github,symbuzzer,es-theme-knulli,$(ES_THEME_KNULLI_VERSION))

define ES_THEME_KNULLI_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
endef

$(eval $(generic-package))
