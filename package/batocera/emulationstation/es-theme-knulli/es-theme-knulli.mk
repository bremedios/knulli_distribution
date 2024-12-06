################################################################################
#
# EmulationStation theme "Knulli"
#
################################################################################
# Version: Commits on December 01, 2024
ES_THEME_KNULLI_VERSION = 97fcfc375bed7855a1506fa6d69a3385bcd63c08
ES_THEME_KNULLI_SITE = $(call github,symbuzzer,es-theme-knulli,$(ES_THEME_KNULLI_VERSION))

define ES_THEME_KNULLI_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
endef

$(eval $(generic-package))
