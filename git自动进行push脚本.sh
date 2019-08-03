#!/bin/bash


##获取时间戳
current=`date "+%Y-%m-%d %H:%M:%S"`  
timeStamp=`date -d "$current" +%s`   
#将current转换为时间戳，精确到毫秒  
currentTimeStamp=$((timeStamp*1000+`date "+%N"`/1000000))
echo '时间戳: $currentTimeStamp'

###设置要进行同步的目录的路径变量,然后使用cd切换过去,再进行操作
dirpath='/home/chen/图片/git/'
cd $dirpath


###使用git命令进行操作,但是一定要先设置好remote 以及将本地的ssh公钥传到github上
addstr=`git add .`
commitstr=`git commit -m '$currentTimeStamp'`
pushstr=`git push -u origin master` 


###这一步是将push命令后的输出显示出来,可以不要,或者换成友好点的提示都可以
echo $pushstr

###最后,可以讲这个脚本使用alias别名的方式封装成一个命令,都可以的.
##在全局变量中做以下设置---- alias clz='/home/test.sh' 等号后面是shell脚本的绝对路径
