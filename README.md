# OC-XPS-7590
XPS 7590 with OpenCore

##### 引导版本

OpenCore: 0.5.8 0.5.9

MacOS: macOS Catalina 10.15.3(19D76) - 10.15.6(19G73)

##### 配置信息
Key | Value
--- | ---
SKU | [XPS-7590](https://www.amazon.com/Generation-Dell-Corei7-9750H-GeForce-InfinityEdge/dp/B07T3FWD22?ref_=ast_sto_dp)
CPU | Intel Core i7 9750H
iGPU | Intel Graphics UHD 630
Builtin Screen | 15.6" 1080p 非触屏
RAM | [Samsung M471A4G43MB1 2666 32G](https://www.amazon.sg/Samsung-2666MHz-Memory-Computers-M471A4G43MB1/dp/B07N124XDS) * 2
SSD | TOSHIBA KXG60ZNV1T02 NVMe 1024GB 
Audio | Realtek ALC298
Wireless | BCM94352Zz

##### 使用前注意
- **请先参考该文章：[XPS 7590 1.6.0 UEFI: unlock undervolting and remove CFG lock](https://www.reddit.com/r/Dell/comments/fzv599/xps_7590_160_uefi_unlock_undervolting_and_remove/)，对CFG Lock进行解锁再使用该OpenCore！**

##### 工作情况
- 耳机会在某种特定情况下出现爆音或无声，其他正常工作


##### 睡眠处理
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


##### 日志
- 2020.8.2
  - 更新README，添加4K设备盖上盒子后再打开屏幕出现问题的[解决方案](https://github.com/gorquan/OC-XPS-7590/issues/3#issuecomment-654657348)，感谢[romancin](https://github.com/romancin)
- 2020.6.11
  - 修复睡眠期间自动唤醒问题，感谢[@xxxzc](https://github.com/xxxzc)
- 2020.6.10
  - 修复声卡过快加载导致系统无法识别问题，感谢[@Pinming](https://github.com/Pinming)
  - 添加HDMI音频输出，感谢[tctien342](https://github.com/tctien342)
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

##### 尚未测试
- 雷电是否工作

##### 下一步计划
- 更新Kexts
- 更新使用情况图片
- 修复外接耳机爆音或无声问题
- 驱动SD卡读卡器
- 调整USB和雷电
- 定制电池


##### 说明
- 由于采用了PNP0C0D睡眠，因此Fn+Insert在外接HDMI情况下将关闭内屏而不是睡眠，当不外接HDMI时电脑将进行睡眠
- 对于睡眠部分，请参考睡眠设置
- 序列号应该是洗白状态，安装完成后可以尝试能否正常登录APPLE ID

##### 感谢
- Apple
- [@Acidanthera](https://github.com/acidanthera)
- [@daliansky](https://github.com/daliansky)
- [@geek5nan](https://github.com/geek5nan/Hackintosh-XPS7590)
- [@Dracay](https://github.com/Dracay)
- [@tiger511](https://github.com/tiger511)
- [@shadowed87](https://github.com/shadowed87)
- [@Pinming](https://github.com/Pinming)
- [tctien342](https://github.com/tctien342)
- [@xxxzc](https://github.com/xxxzc)
- [romancin](https://github.com/romancin)

##### Issue和Pull Requests
- 本EFI仅针对XPS 7590 i7 9750 1080p版本修改，其他版本请勿直接使用
- 请先参考OpenCore官方文档和黑果小兵的博客解决问题，如果是本人配置文件有误欢迎提出Issue
- 请说明配置和型号，再描述出现的状况
- 仅供学习使用，造成硬件上的损坏与本人无关

##### 工作图片
![info](/picture/info.png)

![CPU](/picture/cpu.png)

![Memory](/picture/memory.png)

![iGPU](/picture/igpu.png)

![Audio](/picture/audio.png)

![Wireless](/picture/wifi.png)

![Bluetooth](/picture/bluetooth.png)

![SSD](/picture/SSD.png)

![USB](/picture/USB.png)

![Power](/picture/power.png)
