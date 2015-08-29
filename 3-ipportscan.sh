a=0
b=0
LISTLOCATION="iplist.txt"
MINPARAM=1

if [ $# -lt $MINPARAM ]
then
  echo "Enter a number, it'll nmap it from iplist.txt"
fi

if [ $1 ]
then
  cat $LISTLOCATION | while read line
  do
    if [ $1 = $a ]
    then
      nmap $line
    fi
    ((a+=1))
  done
  b=$1+1000
  if [ $b > $a ]
  then
    echo "Not enough IPs."
    echo $b
  fi
fi
