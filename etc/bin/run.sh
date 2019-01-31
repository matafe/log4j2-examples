#!/bin/bash
# Run unix script

JAVA_OPTS="$JAVA_OPTS -Xms96m"
JAVA_OPTS="$JAVA_OPTS -Xmx96m"
# for sun jvm 7
JAVA_OPTS="$JAVA_OPTS -XX:MaxPermSize=512m"

export JAVA_OPTS 

#We could put the log4j config file here!
# or use -Dlog4j.configurationFile=../config/log4j2.xml
#TMP_CP=../config

for a in ../lib/*; do
  TMP_CP=$TMP_CP:$a
done

umask 002

mainClass=com.matafe.log4j2.Main
#run.sh is at the bin folder
logBasePath=./

java -cp $TMP_CP -DlogBasePath=$logBasePath $mainClass 
