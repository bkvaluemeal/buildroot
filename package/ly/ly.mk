################################################################################
#
## ly
#
#################################################################################

LY_VERSION = v0.6.0
LY_SITE = https://github.com/fairyglade/ly.git
LY_SITE_METHOD = git
LY_GIT_SUBMODULES = YES
LY_LICENSE = WTFPL-2.0
LY_LICENSE_FILES = license.md

define LY_BUILD_CMDS
	$(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D)
endef

define LY_INSTALL_TARGET_CMDS
	DESTDIR=$(TARGET_DIR) $(MAKE) -C $(@D) install installsystemd
endef

$(eval $(generic-package))
