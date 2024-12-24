################################################################################
#
# EmulationStation theme "Knulli"
#
################################################################################
# Version: Commits on December 22, 2024
ES_THEME_KNULLI_VERSION = fdff2d69fc398b6f3994397372d19dc2d41c8097
ES_THEME_KNULLI_SITE = $(call github,symbuzzer,es-theme-knulli,$(ES_THEME_KNULLI_VERSION))

define ES_THEME_KNULLI_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
endef

$(eval $(generic-package))
