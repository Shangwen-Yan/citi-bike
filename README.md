* 斜体 *
_斜体_
# 最受欢迎的骑行地点项目
## 使用Bash Script
## 项目说明
从Citi Bike下载的骑行数据，每组数据包含：
* Trip Duration (seconds)
* Start Time and Date
* Stop Time and Date
* Start Station Name
* End Station Name
* Station ID
* Station Lat/Long
* Bike ID
* User Type (Customer = 24-hour pass or 7-day pass user; Subscriber = Annual Member)
* Gender (Zero=unknown; 1=male; 2=female)
* Year of Birth
等，要用到的是出发地名称和到达地名称，然后统计这些地名出现的频率，做降序排序，从而得出出现频率最高的地点（最受欢迎的骑行地点）

## 脚本说明
* 声明脚本解释方法

` #! /bin/bash `
* 下载并解压数据

` wget http://witestlab.poly.edu/bikes/201601-citibike-tripdata.zip `

` unzip 201601-citibike-tripdata.zip `
* 读取第五列（出发地点），输出到all-station.csv文件

` awk -F "\"*,\"*" '{print $5}' 201601-citibike-tripdata.csv 201601-citibike-tripdata.csv > all-station.csv `
* 读取第九列（到达地点），追加到all-station.csv文件

` awk -F "\"*,\"*" '{print $9}' 201601-citibike-tripdata.csv 201601-citibike-tripdata.csv >> all-station.csv `
* 使用管道符号（将前一指令输出作为下一指令的输入）
* uniq 指令只能对相邻行做唯一统计，所以必须要先进行排序，-c表示在列前添加统计的出现次数
* sort -nr 表示逆序排序（从高到低），最终输出到final-result.csv

` cat all-station.csv | sort | uniq -c | sort -nr > final-result.csv `
