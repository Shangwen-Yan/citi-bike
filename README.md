#最受欢迎的骑行地点项目
## Bash Script
##项目说明
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

##脚本说明
