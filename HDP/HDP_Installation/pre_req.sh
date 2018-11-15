hostnamectl set-hostname master1.hadoop.com # set your hostname here
echo "vm.swappiness = 10" >> /etc/sysctl.conf
sed -i 's/SELINUX=enforcing/SELINUX=disabled/' /etc/selinux/config
yum -y install ntp
systemctl enable ntpd
systemctl start ntpd
echo "echo never > /sys/kernel/mm/transparent_hugepage/enabled " >> /etc/rc.local
echo "echo never > /sys/kernel/mm/transparent_hugepage/defrag " >> /etc/rc.local
systemctl disable firewalld