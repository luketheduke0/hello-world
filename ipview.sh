a = 0
LISTLOCATION = iplist.txt

cat $LISTLOCATION | while read line
do
 $a++
 if ($1 = $a)
 then
  firefox $line
 fi 
done

