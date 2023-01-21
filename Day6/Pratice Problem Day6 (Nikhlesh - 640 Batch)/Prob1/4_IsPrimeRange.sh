read -p "Enter a number:" num
isPrime=1
for (( n=2 ; n<=num ; n++ ))
do
if (( $n==0 )); then
        isPrime=0
else
        for (( i=2 ; i<=$((n/2)) ; ++i ))
        do
        if (( $(($n%$i))==0 )); then
                isPrime=0
                break
        else
                isPrime=1
        fi
        done
fi
if (( $isPrime==1 )); then
        echo $n
fi
done