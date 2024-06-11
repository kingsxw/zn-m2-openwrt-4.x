#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Install feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#


# 替换argon主题
rm -rf feeds/luci/themes/luci-theme-argon* feeds/smpackage/luci-theme-argon*
git clone https://github.com/jerrykuku/luci-theme-argon.git -b 18.06 feeds/luci/themes/luci-theme-argon
git clone https://github.com/jerrykuku/luci-theme-argon.git -b 18.06 feeds/smpackage/luci-theme-argon
rm -rf feeds/luci/applications/luci-app-argon-config feeds/smpackage/luci-app-argon-config
git clone https://github.com/jerrykuku/luci-app-argon-config.git -b 18.06 feeds/luci/applications/luci-app-argon-config
git clone https://github.com/jerrykuku/luci-app-argon-config.git -b 18.06 feeds/smpackage/luci-app-argon-config

# miniupnpd
rm -rf feeds/smpackage/miniupnpd-iptables
cp -rf feeds/packages/net/miniupnpd feeds/smpackage/miniupnpd-iptables

# 替换golang版本为1.22
rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 22.x feeds/packages/lang/golang


