a=1
LISTLOCATION=iplist.txt

while [ $a=1 ]
do
 nmap -iR 150 -n -p 80,443 --open | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' >> $LISTLOCATION
done

