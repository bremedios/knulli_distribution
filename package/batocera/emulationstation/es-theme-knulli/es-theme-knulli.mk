################################################################################
#
# EmulationStation theme "Knulli"
#
################################################################################
# Version: Commits on November 10, 2024
ES_THEME_KNULLI_VERSION = 3f3e6302014c59a391b319df0baf7d0dbb1b7314
ES_THEME_KNULLI_SITE = $(call github,symbuzzer,es-theme-knulli,$(ES_THEME_KNULLI_VERSION))

define ES_THEME_KNULLI_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
endef

$(eval $(generic-package))
