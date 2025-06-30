二次编辑（2025.7）：
居然还有人在看，我解除了归档状态，有什么问题可以留在issue里面。这个项目毕竟是课程设计，还是有相当多的问题，比如vga显示的时候下方有红条纹，等等等等。如果大家有不错的解决方案也可以留一个PR？

如果只是拿来应付期末的话，可以看看rlease里面的文件，应该可以直接烧录，额外需要看看怎么接线，具体我记不太清楚了，可以翻翻代码，麻烦的部分应该主要就是连接电机驱动那几根，实在不行可以留言，我也可以帮忙。

![image](https://github.com/lglglglgy/FPGA_smart_car/assets/129643128/2648a214-82ce-43d6-aaca-97b6faf73347)

<hr>

## 课程设计作业。该项目主要分为三个部分：
上传代码是为了给想使用ov5640的同学一个参考，这部分很困难。如果有帮助就点个star吧！
1. OV5640的配置和图像采集
2. 实时VGA图像显示和目标检测
3. 小车的控制

## 设备清单：

1. OV5640摄像头模块
2. 超声波测距模块（待定）
3. ARTIX-A7-100T FPGA开发板

## 文件结构
![image](https://github.com/lglglglgy/FPGA_smart_car/assets/129643128/f52f58ec-7595-4c04-819b-d7f30dfa8b25)

<hr>

| 文件名                | 描述                                  |
|----------------------|---------------------------------------|
| `BCD.v`              | BCD编码相关文件                        |
| `car.v`              | 小车控制模块                            |
| `i2c_com.v`          | I2C通信模块                            |
| `ov5640_capture.v`   | OV5640图像捕获模块                      |
| `ov5640_vga.v`       | OV5640到VGA输出模块                     |
| `power_on_delay.v`   | 开机上电模块                            |
| `pwm.v`              | 脉冲宽度调制（PWM）模块                  |
| `reg_config.v`       | 寄存器配置文件                          |
| `top.v`              | 顶级设计文件                            |

## 图片
|||
|----------------------|---------------------------------------|
|![IMG_20231219_220613](https://github.com/lglglglgy/FPGA_smart_car/assets/129643128/67272a6f-55a3-4f81-a90a-0e97d08d1c94) |![IMG_20231219_220623](https://github.com/lglglglgy/FPGA_smart_car/assets/129643128/f9af525f-9817-4ec6-8fdb-3d7f0aeedf1b) |
| ![image](https://github.com/lglglglgy/FPGA_smart_car/assets/129643128/cb20e71c-64ce-405a-8bd5-bdec8905273d)|![image](https://github.com/lglglglgy/FPGA_smart_car/assets/129643128/f7333da8-3f3c-47c0-aa9c-6cce13ac2df2)
|

