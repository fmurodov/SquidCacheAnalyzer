# awk script file

{
 if  ($4 ~ /TCP_IMS_HIT|TCP_HIT|TCP_REFRESH_HIT|TCP_REF_FAIL_HIT|TCP_MEM_HIT|TCP_OFFLINE_HIT|UDP_HIT/ )
  k=k+$5;
  s=s+$5
}
END {
print k,s,1*k/s*100
}
