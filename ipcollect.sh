a=1

while [ $a=1 ]
do
 nmap -iR 50 -n -p 80,443 --open | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' >> iplist.txt
done

