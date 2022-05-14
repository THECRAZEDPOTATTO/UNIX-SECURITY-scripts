PATH=/bin:/usr/bin
stty -echo

while [ -z "$code" ]
do
  echo "/nEnter password: \c"
  read code < /dev/tty
done

trap "" 2 3

echo "
********************************
*                              *
*       TERMINAL SECURED !     *
*                              *
*                              *
********************************


"
i=i
match=""

while [ "$match" != "$code" ]
do 
  sleep $1
  echo "\nEnter password: \c"
  read match < /dev/tty
  i='expr $i '*' 2'
done

echo
stty echo
