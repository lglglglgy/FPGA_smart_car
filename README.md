## 课程设计作业。该项目主要分为三个部分：

1. OV5640的配置和图像采集
2. 实时VGA图像显示和目标检测
3. 小车的控制

## 设备清单：

1. OV5640摄像头模块
2. 超声波测距模块（待定）
3. ARTIX-A7-100T FPGA开发板

## 文件结构


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
| ![image](https://github.com/lglglglgy/FPGA_smart_car/assets/129643128/cb20e71c-64ce-405a-8bd5-bdec8905273d)|![image](https://github.com/lglglglgy/FPGA_smart_car/assets/129643128/f0a5a688-cecf-44f8-a3ef-d8fa97ed664a) |

