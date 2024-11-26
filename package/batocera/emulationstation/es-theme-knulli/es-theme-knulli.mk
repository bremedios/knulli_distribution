################################################################################
#
# EmulationStation theme "Knulli"
#
################################################################################
# Version: Commits on November 24, 2024
ES_THEME_KNULLI_VERSION = 0cfbe66a2d9794d58b4da3913a26fc9abdb93326
ES_THEME_KNULLI_SITE = $(call github,symbuzzer,es-theme-knulli,$(ES_THEME_KNULLI_VERSION))

define ES_THEME_KNULLI_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
endef

$(eval $(generic-package))
