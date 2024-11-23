################################################################################
#
# EmulationStation theme "Knulli"
#
################################################################################
# Version: Commits on November 15, 2024
ES_THEME_KNULLI_VERSION = 603462f5c5af03981a4d0932348955274ba91244
ES_THEME_KNULLI_SITE = $(call github,symbuzzer,es-theme-knulli,$(ES_THEME_KNULLI_VERSION))

define ES_THEME_KNULLI_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
endef

$(eval $(generic-package))
