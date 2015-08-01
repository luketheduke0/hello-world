$!/bin/sh

a=1

while [ $a=1 ]
do
 nmap -iR 500 -n -p 80 --open | grep -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' > iplist.txt
 cat iplist.txt | while read line
 do
  firefox $line
 done
 $a++
done

