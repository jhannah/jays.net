jays.net
========

http://jays.net - Jay Hannah's personal home page

Most of our hosting is on Netlify nowadays (github.com/jhannah-netlify).
But we can't host jays.net there because we use Apache Server Side Includes,
want people to be able to browse random directories, etc...

linode.com latest Debian  # https://www.debian.org/releases/index.en.html
                          # https://wiki.debian.org/DebianUpgrade
lsb_release -a
apt-get update
apt-get upgrade
apt-get full-upgrade
apt-get dist-upgrade
apt-get install apache2
apt-get install git
apt-get install subversion
apt-get install cpanminus
apt-get install build-essential
apt-get install net-tools
apt-get install rsync

adduser jhannah
chown -R jhannah /etc/apache2
chown -R jhannah /var/www
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

cd /var/www
git clone git@github.com:jhannah/jays.net
git clone git@github.com:opennebraska/pri-tif.git ne.tif.report
cd ne.tif.report
git checkout static-www
cd ../
git clone git@github.com:opennebraska/tif.report
git clone git@github.com:jhannah/omaha.foodnotbombs.us

cpanm --local-lib=~/perl5 local::lib && eval $(perl -I ~/perl5/lib/perl5/ -Mlocal::lib)
cpanm Template
cd
mkdir src
cd src
git clone git@github.com:jhannah/usshoustondive.com
cd usshoustondive.com
ttree -f ttree.cfg

From local:
rsync -av --progress --max-size=5m \
  ~/Dropbox/Shared/houston\ file/ www.usshoustondive.com:/var/www/usshoustondive.com/assets/
After which probably that ttree thing again, since --delete might wipe out the CSS

/etc/init.d/apache2 restart



