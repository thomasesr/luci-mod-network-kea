include $(TOPDIR)/rules.mk

PKG_NAME:=luci-mod-network-kea
PKG_VERSION:=0.1.0
PKG_RELEASE:=1
PKGARCH:=all
PKG_LICENSE:=Apache-2.0
PKG_MAINTAINER:=Thomas Richter

include $(INCLUDE_DIR)/package.mk

define Package/luci-mod-network-kea
  SECTION:=luci
  CATEGORY:=LuCI
  SUBMENU:=2. Modules
  TITLE:=Kea integration for LuCI network interface editor
  DEPENDS:=+luci-mod-network
endef

define Package/luci-mod-network-kea/description
 Adds Kea-aware DHCP tab behavior to LuCI interface editor.
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Compile
endef

define Package/luci-mod-network-kea/install
	$(CP) ./root/* $(1)/
endef

$(eval $(call BuildPackage,luci-mod-network-kea))