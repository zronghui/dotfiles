# crontab 编辑器指定
# export EDITOR=/usr/local/bin/cot
export EDITOR=/usr/bin/vim

# mysql
export PATH=${PATH}:/usr/local/mysql/bin

# spark 地址指定
export SPARK_HOME=~/Downloads/spark/spark-2.3.0-bin-hadoop2.7
export PATH=$SPARK_HOME/bin:$PATH
export HADOOP_HOME=/Users/zhangronghui/Downloads/spark/hadoop-2.6.0-cdh5.7.0
export PATH=$HADOOP_HOME/bin:$PATH

# jdk 管理
export JAVA_11_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.1.jdk/Contents/Home
# export JAVA_8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home
export JAVA_8_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home
export JAVA_HOME=$JAVA_8_HOME
alias jdk8='export JAVA_HOME=$JAVA_8_HOME'
alias jdk11='export JAVA_HOME=$JAVA_11_HOME'

# go
export GOPATH=/Users/zhangronghui/go
PATH=$GOPATH/bin:$PATH

# elastic search
export PATH=/usr/local/Cellar/elasticsearch/6.8.6/bin:$PATH

export REDIS_CONNECTION_STRING='redis://redispassword@127.0.0.1:6379'

export GITLAB_HOME=$HOME