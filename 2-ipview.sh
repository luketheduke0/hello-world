a=0
LISTLOCATION=iplist.txt
MINPARAM=1

if [ $# < $MINPARAM ]
then
  echo "Enter a number, it'll show it in firefox"
fi
cat $LISTLOCATION | while read line
do
  if [ $1 = $a ]
  then
    firefox $line
  fi
  ((a+=1)) 
done
