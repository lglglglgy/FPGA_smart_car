# FPGA_smart_car
# Course Design Assignment
This repository contains my course design assignment. The project is divided into three main parts:

1. Configuration and image acquisition of OV5640
2. Real-time VGA image display and target detection
3. Control of a small car
## Here is the inventory of equipment:

1. The OV5640 camera module
2. Ultrasonic distance measurement module (To be confirmed)
3. The ARTIX-A7-100T FPGA board


## File Structure

The following table lists the key files in the project and their descriptions:

| File Name            | Description                            |
|----------------------|----------------------------------------|
| `BCD.v`              | BCD encoding related file              |
| `car.v`              | Car control module                     |
| `i2c_com.v`          | I2C communication module               |
| `ov5640_capture.v`   | OV5640 image capture module            |
| `ov5640_vga.v`       | OV5640 to VGA output module            |
| `power_on_delay.v`   | Power-on delay module                  |
| `pwm.v`              | Pulse Width Modulation (PWM) module    |
| `reg_config.v`       | Register configuration file            |
| `top.v`              | Top-level design file                  |

