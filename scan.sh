a=1

while [ $a=1 ]
do
 nmap -iR 5 -n -p 80 --open | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' > iplist.txt
 cat iplist.txt | while read line
 do
  firefox $line
 done
done

