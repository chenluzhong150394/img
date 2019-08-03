#!/bin/bash

##获取时间戳
current=`date "+%Y-%m-%d %H:%M:%S"`  
timeStamp=`date -d "$current" +%s`   
#将current转换为时间戳，精确到毫秒  
currentTimeStamp=$((timeStamp*1000+`date "+%N"`/1000000)) 

dir_path='/home/chen/图片/git/'

cd $dir_path

echo $currentTimeStamp
addstr=`git add .`
commitstr=`git commit -m '$currentTimeStamp'`
pushstr=`git push -u origin master` 

echo $pushstr
echo $commitstr
