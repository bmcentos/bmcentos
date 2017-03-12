#!/bin/bash
#Ping em ip em lista
list=urls
Arq=url_onion_status_`date +%d%m%y-%H%M`.log
echo "#####################################################"
echo "#####################################################"
echo "#####          T e s T e  ==  O n i O n         #####"
echo "#####################################################"
echo "`date`" >> $Arq
cat $List | while read ip
do
ping -c 2 $ip > /dev/null
if [ $? = 0 ]; then
echo "ping - Ok $ip" >> $Arq
else
echo "ping - Fail $ip" >> $Arq
fi
done
