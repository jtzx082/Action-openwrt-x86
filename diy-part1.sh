#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
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

# Add a feed source
# echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
# echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
# echo 'src-git nikki https://github.com/nikkinikki-org/OpenWrt-nikki.git;main' >>feeds.conf.default
# 添加 kenzo 源 (包含绝大多数热门插件)
echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
# 添加 small 源 (kenzo 的依赖库，通常建议配合使用)
echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default
