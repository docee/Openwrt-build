#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: OpenWrt-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git custom https://github.com/kiddin9/openwrt-packages.git;master' feeds.conf.default

# 添加软件包源
git clone --depth=1 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon  #新的argon主题
git clone -b luci --depth=1 https://github.com/pexcn/openwrt-chinadns-ng.git package/luci-app-chinadns-ng #chinadns-ng的luci
#git clone --depth=1 https://github.com/LGA1150/openwrt-fullconenat package/fullconenat  #全锥形Nat