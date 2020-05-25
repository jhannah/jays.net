jays.net
========

http://jays.net - Jay Hannah's personal home page

linode.com latest Debian
apt-get update
apt-get dist-upgrade
adduser jhannah
apt-get install apache2
apt-get install git
apt-get install subversion
chown -R jhannah /etc/apache2

su - jhannah
cd /etc/apache2/sites-available
svn checkout https://github.com/jhannah/admin/trunk/jays.net/etc/apache2/sites-available
mv sites-available/.svn ./
rm -rf sites-available
svn update

cd /etc/apache2/sites-enabled
ln -s ../sites-available/jays.net.conf jays.net.conf
ln -s ../sites-available/tif.report.conf tif.report.conf
ln -s ../sites-available/usshoustondive.com.conf usshoustondive.conf
ln -s ../sites-available/ne.tif.report.conf ne.tif.report.conf




