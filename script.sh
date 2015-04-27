apt-get update
apt-get -y install vim curl zip
apt-get -y install openjdk-7-jre-headless

echo artifactory soft nofile 32000 >> /etc/security/limits.conf
echo artifactory hard nofile 32000 >> /etc/security/limits.conf

wget http://bit.ly/Hqv9aj -O artifactory-3.6.0.zip
unzip artifactory-3.6.0.zip
mv artifactory-3.6.0 /opt/artifactory
/opt/artifactory/bin/installService.sh
service artifactory start
