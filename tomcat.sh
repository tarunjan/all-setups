sudo dnf install java-17-amazon-corretto -y
wget https://dlcdn.apache.org/tomcat/tomcat-11/v11.0.20/bin/apache-tomcat-11.0.20.tar.gz
tar -zxvf apache-tomcat-11.0.20.tar.gz
cd apache-tomcat-11.0.20
sed -i '56 a\<role rolename="manager-gui"/>' conf/tomcat-users.xml
sed -i '57 a\<role rolename="manager-script"/>' conf/tomcat-users.xml
sed -i '58 a\<user username="tomcat" password="admin@123" roles="manager-gui,manager-script"/>' conf/tomcat-users.xml
sed -i '21d' webapps/manager/META-INF/context.xml
sed -i '22d' webapps/manager/META-INF/context.xml
sh bin/startup.sh
