#!/bin/bash
host="192.168.2.187"
user="root"
pass="Kong@okni"
mysql="mysql -h ${host} -u${user} -p${pass} kongdata"
temp="2018-07-09"
num=0
for((i=1;i<=53;i++));
do
num=$i*1000
sql='insert into kong_miner_sum(miner_type,add_num,add_time) values(2,'${num}',"'${temp}'");'
${mysql} -e "$sql"
temp=`date -d "${temp}+7 days" +%Y-%m-%d`
done
