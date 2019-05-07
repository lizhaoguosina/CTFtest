#/bin/sh
apt-get -y update
apt-get -y upgrade
apt-get -y install tar 
tar zcvpf default.tar.gz default && wget http://soft.vpser.net/lnmp/lnmp1.5-full.tar.gz -cO lnmp1.5.tar.gz
mv *lnmp1.5.tar* lnmp1.5.tar.gz
