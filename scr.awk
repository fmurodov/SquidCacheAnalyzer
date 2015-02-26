#!/usr/bin/awk -f
#
# awk script for analyze cached traffic
# Autor Firdavs Murodov <firdavs@murodov.net>
# Date Dec 03, 2014 16:58

{
 if  ($4 ~ /TCP_IMS_HIT|TCP_HIT|TCP_REFRESH_HIT|TCP_REF_FAIL_HIT|TCP_MEM_HIT|TCP_OFFLINE_HIT|UDP_HIT/ )
  k=k+$5;
  s=s+$5
}
END {
      print k/1024/1024"mb",s/1024/1024"mb",1*k/s*100"% from cache"
 }
