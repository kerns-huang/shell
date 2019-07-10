#!/bin/bash

cat  rediskeyvalue.txt | while read line;
do
read -a temp <<< $line
redis-cli -h r-wz9kspghtn2v8rigbi.redis.rds.aliyuncs.com -a 'A@ID21ls&47bqQUz' -n 100 set ${temp[0]} ${temp[1]}
done
