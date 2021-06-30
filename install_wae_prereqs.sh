sudo yum update
sudo yum -y install epel-release
sudo yum update
sudo yum -y install java-11-openjdk-devel
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-11.0.11.0.9-2.el8_4.x86_64/bin/java
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-11.0.11.0.9-2.el8_4.x86_64/bin/java
sudo echo "export JRE_HOME=/usr/lib/jvm/java-11-openjdk-11.0.11.0.9-2.el8_4.x86_64" >> .bash_profile
sudo echo "export JRE_HOME=/usr/lib/jvm/java-11-openjdk-11.0.11.0.9-2.el8_4.x86_64" >> .bash_profile
env | grep java
java -version
sudo yum -y install perl
perl -version
sudo yum -y install python3
python3 --version
sudo yum -y install python3-requests
rpm -qa | grep request
sudo yum -y install python-paramiko
rp -qa | grep paramiko
sudo yum -y install supervisor
supervisord -version
sudo mkdir -p /opt/supervisor/run
sudo mkdir -p /opt/supervisor/log
sudo chown -R wae:wae /opt/supervisor
sudo cp /etc/supervisord.conf /etc/supervisord.conf.orig
cd /etc
sudo sed -i.bkp1 's+file=/var/run/supervisor/supervisor.sock+file=/opt/supervisor/run/supervisor.sock+' supervisord.conf
sudo sed -i.bkp2 's+;chown=nobody:nogroup+chown=wae:wae+' supervisord.conf
sudo sed -i.bkp3 's+logfile=/var/log/supervisor/supervisord.log+logfile=/opt/supervisor/log/supervisord.log+' supervisord.conf
sudo sed -i.bkp4 's+pidfile=/var/run/supervisord.pid+pidfile=/opt/supervisor/run/supervisord.pid+' supervisord.conf
sudo sed -i.bkp5 's+minfds=1024+minfds=1000000+' supervisord.conf
sudo sed -i.bkp6 's+minprocs=200+minprocs=257805+' supervisord.conf
sudo sed -i.bkp7 's+serverurl=unix:///var/run/supervisor/supervisor.sock+serverurl=unix:///opt/supervisor/run/supervisor.sock+' supervisord.conf
cd ~/
                                                                                                                                                               

