#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: 360V6.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# '修改默内核'
# sed -i 's/PATCHVER:=5.4/PATCHVER:=5.10/g' target/linux/ipq40xx/Makefile         # ipq40xx，内核：5.4，内核为5.10
 
# '修改默认IP'

sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# 修改 luci-theme-argonne 为默认主题
sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap
sed -i 's/luci-theme-bootstrap/luci-theme-argonne/g' ./feeds/luci/collections/luci/Makefile
sed -i 's/luci-theme-bootstrap/luci-theme-argonne/g' feeds/luci/collections/luci-nginx/Makefile
