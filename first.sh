#! /bin/bash
# 常用密码处进行替换后运行
# 由于网站安装时使用的安装脚本与此一致，故all.sql里面也是常用密码_docker作为密码
tar zxvf lnmp1.5.tar.gz && cd lnmp1.5-full && LNMP_Auto="y" DBSelect="1" DB_Root_Password="Xxb@2019" InstallInnodb="n" PHPSelect="1" SelectMalloc="1" ./install.sh lnmp