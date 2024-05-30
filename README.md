# 兆能ZN-M2 OpenWrt 256M 自用精简版


内核版本 4.4.60，编译自 sdf8057大佬的源码仓库 https://github.com/sdf8057/ipq6000

**感谢大佬！**



云编译流程参考

https://github.com/P3TERX/Actions-OpenWrt.git

https://github.com/breeze303/OpenWrt.git

https://github.com/openwrt-fork/zn-m2-openwrt-build.git

**感谢大佬！**



管理地址`192.168.1.1` 默认密码`password`

不包含wifi和USB！

#### 集成软件和功能如下：

- 状态
  1. 释放内存

- 系统

  1. 系统-->ZRam 设置（ZRam 内存压缩）
  2. 高级设置 advancedsetting
  3. 定时重启 autoreboot

- 服务

  1. ACME certs
  2. Watchcat
  3. 网络唤醒
  4. UPnP
  5. KMS 服务器 （vlmcsd）
  6. IPTV 帮手 （iptvhelper）
  7. CPU 性能优化调节 （cpufreq）

- 网络

  1. IP/MAC绑定（arpbind）
  2. Turbo ACC 网络加速设置

  1. wireguard

  1. jq(自用)

     

#### 系统修改如下：

1. 增加jq

2. 增加bonding支持

3. 增加wireguard支持

4. 增加kmod-tcp-bbr（貌似未生效）

5. 删除自带luci-theme-argon和luci-app-argon-confi

   改为从jerrykuku大佬源码仓库

   https://github.com/jerrykuku/luci-theme-argon.git

   https://github.com/jerrykuku/luci-app-argon-config.git

   分支18.06编译

   **感谢大佬！**

6. 在/etc/ddns/下添加自用的cloudflare ddns脚本，详见https://github.com/kingsxw/cloudflare-ddns
