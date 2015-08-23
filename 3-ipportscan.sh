a=0
LISTLOCATION="iplist.txt"
MINPARAM=1

if [ $# -lt $MINPARAM ]
then
  echo "Enter a number, it'll nmap it from iplist.txt"
fi
cat $LISTLOCATION | while read line
do
  if [ $1 = $a ]
  then
    nmap $line
  fi
  ((a+=1))
done
