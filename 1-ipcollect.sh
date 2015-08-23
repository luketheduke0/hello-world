a=1
LISTLOCATION=iplist.txt

httpList=common-http-ports.txt
ipArray=()
int=0
ipString=""

#reads from ip list, forms string formatted for nmap
while read -r line
do
    testArray[$int]=$line
    #echo $line
    if [ $int -ne 0 ]; then
          ipString+=","$line
     else
          ipString+=$line
     fi
     let "int+=1"
done < "$httpList"

#echo $ipString

#nmap loop
while [ $a=1 ]
do
 nmap -iR 150 -n -p $ipString --open | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' >> $LISTLOCATION
done
