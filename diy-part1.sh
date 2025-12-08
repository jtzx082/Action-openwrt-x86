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
