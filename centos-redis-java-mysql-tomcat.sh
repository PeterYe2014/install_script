echo "install redis..."

sudo yum update

sudo yum -y install redis

sudo systemctl start redis

echo "install mysql..."
MYSQL_FILE="mysql-community-release-el7-5.noarch.rpm"
# 
if [ ! -f $MYSQL_FILE ]; then
wget http://dev.mysql.com/get/mysql-community-release-el7-5.noarch.rpm
fi

sudo rpm -ivh mysql-community-release-el7-5.noarch.rpm
yum install mysql-community-server

cat >> /etc/my.cnf << EOF
default-character-set =utf8
EOF

service mysqld restart

echo "Install Tomcat ..."
TOMCAT_FILE="apache-tomcat-8.5.31.tar.gz"
if [ ! -f $TOMCAT_FILE ]; then
wget http://mirror.bit.edu.cn/apache/tomcat/tomcat-8/v8.5.45/bin/apache-tomcat-8.5.45.tar.gz
fi
tar -xvf apache-tomcat-8.5.45.tar.gz

./apache-tomcat-8.5.45/bin/startup.sh


