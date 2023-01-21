a=$(( RANDOM % 900 +100 ))
b=$(( RANDOM % 900 +100 ))
c=$(( RANDOM % 900 +100 ))
d=$(( RANDOM % 900 +100 ))
e=$(( RANDOM % 900 +100 ))
echo "a:$a"
echo "b:$b"
echo "c:$c"
echo "d:$d"
echo "e:$e"
if [ $a -gt $b ] && [ $a -gt $c ] && [ $a -gt $d ] && [ $a -gt $e ] 
then
     echo "a is max"
elif [ $b -gt $c ] && [ $b -gt $d ] && [ $b -gt $e ]
then
     echo "b is max"
elif [ $c -gt $d ] && [ $d -gt $e ]
then
     echo "c is max"
elif [ $d -gt $e ]
then
     echo "d is max"
else
     echo "e is max"
fi
