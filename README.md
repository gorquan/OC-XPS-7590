# OC-XPS-7590
XPS 7590 with OpenCore

##### 引导版本

OpenCore: 0.5.8 0.5.9

MacOS: macOS Catalina 10.15.3(19D76) - 10.15.5(19F96)

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
0.5.8 和 0.5.9的工作情况不一致，请根据自己的需求进行选择，详细工作情况请看对应文件夹下的README

##### 日志
- 2019.6.2
  - 更新到OpenCore 0.5.9
  - 更新Kexts
- 2019.5.20
  - 更新到OpenCore 0.5.8
  - 添加CPUFriend 能够降频到800Mhz
  - 修复HDMI睡眠唤醒黑屏问题
- 2019.5.19
  - 参考geek5nan大佬的OpenCore 0.5.6进行改造

##### 感谢
- Apple
- [Acidanthera](https://github.com/acidanthera)
- [daliansky](https://github.com/daliansky)
- [geek5nan](https://github.com/geek5nan/Hackintosh-XPS7590)

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
