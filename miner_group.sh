#!/bin/bash

host="rm-bp1cal5n6kwjz1ur6.mysql.rds.aliyuncs.com"
user="dongfeng"
export MYSQL_PWD="Okkong123"
mysql="mysql -u${user} -h ${host}"
sql="SELECT mem.id FROM MINER_GROUP_MEMBER mem LEFT JOIN MINER_MONITOR moni ON moni.miner_id=mem.MINER_ID
WHERE moni.miner_id IS NULL"
${mysql} -NBe "${sql}" | while read -a id
do
 echo "delete from MINER_GROUP_MEMBER where id=${id};" >> deleteGroupMember.sql
done
echo "dump success"
