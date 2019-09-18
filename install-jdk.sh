wget https://github.com/frohoff/jdk8u-jdk/archive/jdk8u45-b12.tar.gz \
 -O jdk-8u221.tar.gz
tar -xvf ./jdk-8u221.tar.gz -C /usr/local

: << !
cat >> /etc/profile << EOF
export JAVA_HOME=/usr/local/jdk-8u221
export PATH=$JAVA_HOME/bin:$PATH 
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
EOF
!
