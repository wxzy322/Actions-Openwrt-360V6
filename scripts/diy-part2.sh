#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Enable Cache
echo -e 'CONFIG_DEVEL=y\nCONFIG_CCACHE=y' >> .config

#　添加新插件
git clone https://github.com/destan19/OpenAppFilter.git package/luci-app-oaf

git clone https://github.com/gdck/luci-app-control-weburl.git package/luci-app-control-weburl

git clone https://github.com/lariboo/ddnsto.git package/ddnsto
git clone https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb
#　svn co　https://github.com/wwz09/openwrt-packages/trunk/luci-app-control-webrestriction package/luci-app-control-webrestriction
git clone https://github.com/jerrykuku/luci-app-vssr.git package/luci-app-vssr
