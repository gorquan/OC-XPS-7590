# OC-XPS-7590
XPS 7590 with OpenCore

### 引导版本

OpenCore: 0.5.8 0.5.9 0.6.0 0.6.1 0.6.2 0.6.3 0.6.4 0.6.5 0.6.7 0.6.8 0.6.9 0.7.1 **0.7.2**

MacOS: 
- macOS Catalina 10.15.3(19D76) - 10.15.7(19H2)
- macOS Big Sur 11.0 11.1 11.2 11.3 11.4 **11.5.2(20G95)**

### 配置信息
Key | Value
--- | ---
型号 | [XPS-7590](https://www.amazon.com/Generation-Dell-Corei7-9750H-GeForce-InfinityEdge/dp/B07T3FWD22?ref_=ast_sto_dp)
CPU | Intel Core i7 9750H
核芯显卡 | Intel Graphics UHD 630
内建显示屏 | 15.6" 1080p **非触屏**
内存 | [Samsung M471A4G43MB1 2666 32G](https://www.amazon.sg/Samsung-2666MHz-Memory-Computers-M471A4G43MB1/dp/B07N124XDS) * 2
固态硬盘 | TOSHIBA KXG60ZNV1T02 NVMe 1024GB 
板载声卡 | Realtek ALC298
无限网卡 | BCM94352Zz(DW1560)

### 使用前注意
- **请先参考该文章：[XPS 7590 1.6.0 UEFI: unlock undervolting and remove CFG lock](https://www.reddit.com/r/Dell/comments/fzv599/xps_7590_160_uefi_unlock_undervolting_and_remove/)，对CFG Lock进行解锁再使用该OpenCore！**
- 目前仅为完善macOS，可能会导致Windows出现不稳定情况。
- 与kext相关的内容添加会同时同步到其他Opencore版本的config文件中，但**不保证可用性**，请自行测试。**建议使用仓库最新版**
- 使用前请先**更新序列号**，以免被苹果拉黑账号。
- 请各基于本仓库的定制版，**注明来源并更新机器序列号**再进行使用，谢谢！

### 工作情况
- CPU：
  - 正常工作
  - 正常变频,最低频率800MHz
  - 温度正常
- 板载声卡：
  - 正常工作
  - 支持耳机、内置扬声器和HDMI音频输出
  - 支持内建麦克风
- 核芯显卡：
  - 正常工作
  - 支持HDMI输出
- 内建显示屏：
  - 正常工作
- 蓝牙：
  - 正常工作
  - 能够与其他设备正常连接
- 电池：
  - 正常工作
  - 续航时间可以长达5小时（电池健康情况下）
- 无线网卡：
  - 正常工作
  - 隔空投送能够正常使用
- 键盘：
  - 正常工作
  - 键盘灯能够正常显示
  - 快捷键正常工作
- 触控板：
  - 正常工作
- 睡眠：
  - 正常工作
  - 盒盖睡眠正常工作
- 读卡器：
  - 正常工作
- USB
  - 支持安卓手机USB网络共享功能
  
### 存在问题的设备
- 独显
  - 无法进行驱动，已经屏蔽
- 读卡器
  - 无法使用只读模式（内存卡加锁）

### 结构目录
- 最新版会提供完整的EFI，目前仓库最新版：**0.7.2**
- 为了方便维护，已经将ACPI、Kext和Drivers目录独立出来，如果需要旧版本的Opencore，请自行组合EFI文件夹内容，**建议使用仓库最新版Opencore**

### 驱动情况
- 全部驱动为最新

### 引导更新日志
- 2021.8.28
  - 更新README
  - 更新到Opencore 0.7.2
  - 所有Kext更新到最新版本
- 2021.7.17
  - 更新README
  - 更新到Opencore 0.7.1
  - 所有Kext更新到最新版本
  - 修复亮度控制加载缓慢问题
- 2021.5.22
  - 更新README
  - 更新到Opencore 0.6.9
  - 所有Kext更新到最新版本
- 2021.5.10
  - 添加HoRNDIS.kext，支持安卓USB共享网络功能
- 2021.5.1
  - 更新README
  - 更新到Opencore 0.6.8
  - 所有Kext更新到最新版本
- 2021.3.14
  - 更新README
  - 修复alc-verb无法使用情况
  - 修复声卡在电池状态下耳机爆音问题
- 2021.3.14
  - 更新README
  - 更新到Opencore 0.6.7
  - 所有Kext更新到最新版本
- 2021.1.9
  - 更新README
  - 更新到Opencore 0.6.5
  - 所有Kext更新到最新版本
- 2020.12.12
  - 更新README
  - 更新到Opencore 0.6.4
  - 所有Kext更新到最新版本
- 2020.11.16
  - 更新README
  - 更新到Opencore 0.6.3
  - 所有Kext更新到最新版本
- 2020.10.18
  - 更新所有Kext到最新版本
- 2020.10.8
  - 更新README
  - 更新到Opencore 0.6.2
  - 所有Kext更新到最新版本
- 2020.10.4
  - 更新README
  - 更新到Opencore 0.6.1
  - 所有Kext更新到最新版本
  - 解决DW1560无法打开WIFI问题
  - 解决声卡无法加载问题
- 2020.9.5
  - 更新README
  - 添加ALCPlugFix修复方式，具体见[ALCPlugFix](https://github.com/gorquan/ALCPlugFix)
  - 发现声卡无声原因，解决方案见声卡问题处理，感谢[@illusion899](https://github.com/illusion899)帮忙测试
  - 添加了雷电3的SSDT，感谢[@daliansky](https://github.com/daliansky)
- 2020.9.4
  - 测试读卡器驱动是否会影响睡眠，未发现有影响
  - 检测Kext是否有更新
- 2020.8.30
  - 添加读卡器驱动，能够对未上锁的内存卡进行读写，感谢[@cholonam](https://github.com/cholonam/Sinetek-rtsx)
- 2020.8.9
  - 更新到Opencore 0.6.0
  - 添加Dell的传感器，可以查看和控制风扇转速
  - 更新Kexts
  - Opencore 0.5.8 0.5.9 配置文件已经加上DELL传感器Kexts，可直接使用
- 2020.8.2
  - 更新README，添加4K设备盖上盒子后再打开屏幕出现问题的[解决方案](https://github.com/gorquan/OC-XPS-7590/issues/3#issuecomment-654657348)，感谢[@romancin](https://github.com/romancin)
- 2020.6.11
  - 修复睡眠期间自动唤醒问题，感谢[@xxxzc](https://github.com/xxxzc)
- 2020.6.10
  - 修复声卡过快加载导致系统无法识别问题，感谢[@Pinming](https://github.com/Pinming)
  - 添加HDMI音频输出，感谢[@tctien342](https://github.com/tctien342)
  - 增强了IGPU性能
- 2020.6.6
  - 修正了PNP0C0E睡眠，即Fn+Insert，将 PNP0C0E 睡眠转换为 PNP0C0D 睡眠。
  - 去除boot-arg中的-wegnoegpu参数，采用SSDT屏蔽DGPU，待机时间可以持续到5小时以上。
  - 修复了睡眠状态唤醒后需要按任意键点亮屏幕问题
- 2020.6.5
  - 修复了睡眠唤醒电量消耗过快问题，见[文章](https://www.reddit.com/r/hackintosh/comments/gf6j7q/increased_battery_drain_after_wake_from_sleep_xps/)
- 2020.6.3
  - 解决OpenCore 0.5.9下触摸板无法使用问题，感谢[@Dracay](https://github.com/Dracay)提出的Issue和[@tiger511](https://github.com/VoodooI2C/VoodooI2C/issues/313#issuecomment-628906706)提出的解决方案
- 2020.6.2
  - 更新到OpenCore 0.5.9
  - 更新Kexts
- 2020.5.20
  - 更新到OpenCore 0.5.8
  - 添加CPUFriend 能够降频到800Mhz
  - 修复HDMI睡眠唤醒黑屏问题
- 2020.5.19
  - 参考geek5nan大佬的OpenCore 0.5.6进行改造

### 引导补充说明
- 由于采用了PNP0C0D睡眠，因此Fn+Insert在外接HDMI情况下将关闭内屏而不是睡眠，当不外接HDMI时电脑将进行睡眠
- OC 0.6.3支持从MacOS10.15.7平滑升级到MacOS11.0，无须重装。建议先将OC更新到最新版本再对MacOS进行升级，以免出现不可预估的问题。
- 升级0.6.4请参考文章进行升级 [When upgrading to 0.6.4 we recommend](https://github.com/acidanthera/bugtracker/issues/1222#issuecomment-739241310)
- 由于0.6.6是一个较大的改动[PSA: OpenCore 0.6.6 will require you to jump through a few more hoops](https://www.reddit.com/r/hackintosh/comments/lb2456/psa_opencore_066_will_require_you_to_jump_through/)，且存在未知问题放弃适配。低版本用户可以直接升级到0.6.7，建议按照该文章进行升级，以免出现不可预估的问题 [Updating Bootstrap in 0.6.6](https://dortania.github.io/OpenCore-Post-Install/multiboot/bootstrap.html#updating-bootstrap-in-0-6-6)
- 由于个人原因，没有适配0.7.0，可以直接升级到0.7.1

### 进入系统后优化
- 对于睡眠部分，请参考睡眠设置
- 对于电池供电下唤醒导致耳机爆音/无声等问题，请参考声卡问题处理 
- 对于升级11.1后sech进程一直占用CPU，请打开iCloud密钥串同步开关，即可解决

### 睡眠处理
1. 检查hibernatemode是否为0或3

``` shell
pmset -g | grep hibernatemode
```

2. 在终端执行以下命令

``` shell
sudo pmset -a standby 0
sudo pmset -a proximitywake 0
sudo pmset -a hibernatemode 3 # 如果hibernatemode 不为3或0 执行此条命令
sudo pmset -a tcpkeepalive 0 # 如果仍然睡不着可以尝试一下睡眠期间断开网络连接
```

3. 除了“当显示器关闭时，防止电脑自动进入睡眠”是可选的外，请关闭设置-节能器里的所有其他选项。

### 声卡问题处理

板载声卡如果在电池供电状态下使用耳机，并从睡眠中唤醒会出现无声/爆音问题

* 原因

唤醒前`nid = 0x18 --> result 0x00000024`，唤醒后`nid = 0x18 --> result 0x00000000`，更改`nid = 0x18`的`result`为`0x00000024`即可正常发声

* 解决方式

有两种解决方式
  - 使用[ALCPlugFix](https://github.com/gorquan/ALCPlugFix),出现问题后**插拔耳机**
  - 执行以下命令：`alc-verb 0x18 SET_PIN_WIDGET_CONTROL 0x24`，需要参考**alc-verb安装**步骤

* alc-verb安装

`alc-verb`可以从AppleALC中获取，下载后请将其**放置**在`/usr/local/bin`目录下面

* 注意
  
如果采用两者，则**不要**再将`alc-verb`安装在`/usr/local/bin`目录下面，因为`ALCPlugFix`已经安装`alc-verb`到`/usr/local/bin`下。

### 其他相关说明
- Intel Wi-Fi Adapter Kernel Extension for macOS [itlwm](https://github.com/OpenIntelWireless/itlwm)

### 尚未测试
- 雷电是否工作

### 下一步计划
- 配置调优，使其更适合运行MacOS
- 调整USB
- 定制电池

### 感谢
- Apple
- 各位Kext开发者
- [@Acidanthera](https://github.com/acidanthera)
- [@daliansky](https://github.com/daliansky)
- [@geek5nan](https://github.com/geek5nan/Hackintosh-XPS7590)
- [@Dracay](https://github.com/Dracay)
- [@tiger511](https://github.com/tiger511)
- [@shadowed87](https://github.com/shadowed87)
- [@Pinming](https://github.com/Pinming)
- [@tctien342](https://github.com/tctien342)
- [@xxxzc](https://github.com/xxxzc)
- [@romancin](https://github.com/romancin)
- [@cholonam](https://github.com/cholonam)
- [@illusion899](https://github.com/illusion899)


