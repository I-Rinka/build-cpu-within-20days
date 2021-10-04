# build-cpu-within-20days
北京理工大学 2021小学期 计算机组成原理课程设计。硬件描述语言实现计算机系统。

该项目中含有单周期CPU和流水线CPU，目前已经下板实现斐波那契数列的显示。

**注：** 由于不明原因，在GitHub项目中的流水线CPU项目可以综合及下板，但**不能仿真**。初步判断是vivado缺少某些关键文件的bug。因此将可运行的项目原件上传至release中

![image](https://user-images.githubusercontent.com/50841088/135760230-7aab9220-ad89-42ef-bf69-238748fbc0be.png)

处理器架构亮点：

* 高度模块化
* CPI为1，永不断流
* 设计巧妙且精简
