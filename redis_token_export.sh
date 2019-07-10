redis-cli -h r-bp1ce786b2cb4a74.redis.rds.aliyuncs.com -a 'Okkong!@%^123!9' -n 100 keys "login:token:*" >> redisdata.txt


cat redisdata.txt | while read line;
do
result=`redis-cli -h r-bp1ce786b2cb4a74.redis.rds.aliyuncs.com -a 'Okkong!@%^123!9' -n 100 get "${line}"`
echo ${line} ${result} >> rediskeyvalue.txt
done
