#! /bin/bash
# lock=/root/runonce.lock
# if [ ! -f $lock ]; then
#         hdfs dfs -mkdir -p /tmp/hive
#         hdfs dfs -chmod 733 /tmp/hive
#         schematool -dbType derby -initSchema
#         touch $lock
#         hiveserver2
# fi

hdfs dfs -mkdir -p /tmp/hive
hdfs dfs -chmod 733 /tmp/hive
schematool -dbType derby -initSchema
hiveserver2