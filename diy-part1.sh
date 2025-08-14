#!/bin/bash
#
# https://github.com/P3TERX/动作-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 修复erofs编译依赖
sed -i 's/DEPENDS:= /DEPENDS:= +liblz4 +libuuid /' package/utils/erofs-utils/Makefile

# 若仍失败，回退到稳定版本
#echo "src-git erofs https://github.com/openwrt/openwrt.git" >> feeds.conf.default

# Add a feed source
# echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2' >>feeds.conf.default
echo 'src-git nikki https://github.com/nikkinikki-org/OpenWrt-nikki.git;main' >>feeds.conf.default
echo 'src-git partexp https://github.com/sirpdboy/luci-app-partexp.git;main' >>feeds.conf.default
echo 'src-git netspeedtest https://github.com/sirpdboy/luci-app-netspeedtest.git' >>feeds.conf.default
echo 'src-git netwizard https://github.com/sirpdboy/luci-app-netwizard.git' >>feeds.conf.default
echo 'src-git watchdog https://github.com/sirpdboy/luci-app-watchdog.git' >>feeds.conf.default
echo 'src-git taskplan https://github.com/sirpdboy/luci-app-taskplan.git' >>feeds.conf.default
echo 'src-git timecontrol https://github.com/sirpdboy/luci-app-timecontrol.git' >>feeds.conf.default
echo 'src-git poweroffdevice https://github.com/sirpdboy/luci-app-poweroffdevice.git' >>feeds.conf.default
echo 'src-git store https://github.com/linkease/istore.git' >>feeds.conf.default
echo 'src-git linkease_nas https://github.com/linkease/nas-packages.git' >>feeds.conf.default
echo 'src-git linkease_nas_luci https://github.com/linkease/nas-packages-luci.git' >>feeds.conf.default
echo 'src-git third https://github.com/jjm2473/openwrt-third.git' >>feeds.conf.default
echo 'src-git third_party https://github.com/linkease/istore-packages.git' >>feeds.conf.default
echo 'src-git ddns_go https://github.com/jtzx082/luci-app-ddns-go.git' >>feeds.conf.default
