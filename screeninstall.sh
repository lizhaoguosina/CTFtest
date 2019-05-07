#!/bin/bash
/usr/bin/expect <<-EOF
set timeout 300000
spawn bash /home/first.sh
expect "Install lnmp V1.5 completed! enjoy it."
send "exit"
expect eof
EOF
exit 0