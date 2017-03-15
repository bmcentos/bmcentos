#!/bin/bash
#Ping em ip em lista
#Montar um arquivo "urls" com a lista de URLs onion para teste
list=urls_onion
Arq=url_onion_status_`date +%d%m%y-%H%M`.log
echo "#####################################################" >> $Arq
echo "#####################################################" >> $Arq
echo "#####          T e s T e  ==  O n i O n         #####" >> $Arq
echo "#####################################################" >> $Arq
echo "`date`" >> $Arq
cat $list | while read ip
do
#ping -c 2 $ip > /dev/null
proxychains httping -c2 $ip > /dev/null
if [ $? = 0 ]; then
echo "ping - Ok => $ip" >> $Arq
else
echo "ping - Fail => $ip" >> $Arq
fi
done
exit 0
