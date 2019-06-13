#!/usr/bin/env bash

# USAGE: 
# - execute as root on target host
# - enter password to encrypt artefacts
# - pull `artefacts.tar.gz` from host
# - extract via `openssl enc -aes-256-cbc -d -in artefacts.tar.gz | tar -xzv`

set -x

date -u # print time
w # print logged in users
mkdir -m 700 artefacts # artefacts directory
find / -type f -exec stat --format '%D %N %U %G %A %b %X %Y %Z' {} \; > artefacts/files.txt # file timestamps
timedatectl > artefacts/timedatectl.txt # time settings
uname -a > artefacts/uname.txt # kernel name
w > artefacts/w.txt # utmp log
last > artefacts/last.txt # wtmp log
lastlog > artefacts/lastlog.txt # lastlog log
ifconfig -a > artefacts/ifconfig.txt # network interfaces
netstat -nputwa > artefacts/netstat.txt # network connections
lsof -i -n > artefacts/lsof.txt # list open files
ps -aux > artefacts/ps.txt # running processes
iptables -L > artefacts/iptables.txt # firewall rules
dpkg -l > artefacts/dpkg.txt # debian packages
httpd -v > artefacts/httpd.txt # http daemon version
apache2 -v > artefacts/apache2.txt # apache daemon version
mysql --version > artefacts/mysql.txt # mysql daemon version
find /home/*/.bash_history -type f -print -exec cat {} \; > artefacts/bash_history.txt # bash histories
cp /etc/crontab artefacts/crontab.txt # crontab file
cp /etc/sudoers artefacts/sudoers.txt # sudo config
cp /etc/passwd artefacts/passwd.txt # users
cp /etc/group artefacts/group.txt # groups
cp /etc/hosts artefacts/hosts.txt # host ips
cp /etc/hosts.allow artefacts/hosts.allow.txt # allowed hosts
cp /etc/hosts.deny artefacts/hosts.deny.txt # denied hosts
cp -r /var/log artefacts # all logs
tar -czv artefacts | openssl enc -aes-256-cbc -e > artefacts.tar.gz # archive artefacts
md5sum artefacts.tar.gz # print md5 of artefacts
rm -rf artefacts # delete artefacts directory
w # print logged in users
date -u # print time
