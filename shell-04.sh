#! /bin/sh
# 备份远程服务器代码
echo "备份aliyun01代码"

ip='aliyun01'
port=22
base_dir='/app/site'
bak_dir='/app/backup'
app_name='chukui_robot'
local_dir='/Users/mark/code/test'


# ssh -p$port mark@$ip "rsync -av --delete $base_dir/$app_name/ $bak_dir/$app_name-`date +%Y%m%d_%H.%M`"

cd $local_dir/$app_name
git checkout master
git pull

rsync -av --exclude=\.git ./ $ip:$base_dir/$app_name