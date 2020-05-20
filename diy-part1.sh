#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
sed -i 's/OpenWrt/RyanOS/g' openwrt/package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i 's/OpenWrt/RyanOS/g' openwrt/package/base-files/files/bin/config_generate

# Lienol/openwrt-package
sed -i '$a src-git lienol https://github.com/Lancenas/lienol-openwrt-package.git' feeds.conf.default
