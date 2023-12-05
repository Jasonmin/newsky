#!/bin/sh

## 权限授予 chmod u+x *.sh
# chmod u+x ./zzcommit.sh

# git push

# 获取提交信息
message="`date +%y-%m-%d,%H:%M`"
if [ "$1" != "" ] #前后保留空格
then
    message="$1"
fi


echo ======Gitee commit

# Gitee
git remote set-url origin https://gitee.com/mintree/newsky.git

git pull

# 代码git提交
git add .
git commit -m 'c'
git push


echo ======github page commit

# bitbucket
git remote set-url origin https://github.com/Jasonmin/newsky.git
git pull

# 代码git提交
git add .
git commit -m 'c'
git push


# # 日志
# # echo $message

# # 提交并推送
# git add .
# git commit -m "$message"

# # 拉取
# # git pull
# git push
