include $(TOPDIR)/rules.mk

PKG_NAME:=luci-mod-network-kea
PKG_VERSION:=1
PKG_RELEASE:=1

PKG_LICENSE:=Apache-2.0
PKG_MAINTAINER:=Your Name <you@example.com>

include $(INCLUDE_DIR)/package.mk

define Package/luci-mod-network-kea
  SECTION:=luci
  CATEGORY:=LuCI
  SUBMENU:=3. Applications
  TITLE:=Kea integration for LuCI network interface editor
  DEPENDS:=+luci-mod-network +luci-app-kea
endef

define Package/luci-mod-network-kea/description
 Adds Kea-aware DHCP tab behavior to LuCI interface editor.
endef

define Build/Compile
endef

define Package/luci-mod-network-kea/install
	$(CP) ./root/* $(1)/
endef

$(eval $(call BuildPackage,luci-mod-network-kea))
