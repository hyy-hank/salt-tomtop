#!/bin/sh
#
# 更新部署tomcat项目
# time: 2016.02.29
# by: xikai
#

project=$1
port=$2
version=$3
usage="Usage: $0 {project_name} {port} {version}"

#get war
get_war()
{
  rm -rf /data/war/${project}.war
  wget -t 3 -c http://docking.tomtop.com:83/$project/$version/${project}.war -P /data/war
}

#update project
project_update()
{
  rm -rf /data/www/$project/*
  unzip -o /data/war/$project.war -d /data/www/$project/ >/dev/null
}


#check project
project_check()
{
  code=`/usr/bin/curl -IXGET -o /dev/null -s -w '%{http_code}' http://127.0.0.1:$port/test`
  if [[ $code -ne 200 ]] ;then
    echo "[ERROR] tomcat startup failed."
    exit 1
  fi
}

#exec script
if [[ $# == 3 ]] ;then
  get_war
  systemctl stop tomcat-$project
  project_update
  rm -rf /usr/local/tomcat-$project/work
  systemctl start tomcat-$project
  sleep 20
  project_check
else
  echo $usage
  exit 1
fi
