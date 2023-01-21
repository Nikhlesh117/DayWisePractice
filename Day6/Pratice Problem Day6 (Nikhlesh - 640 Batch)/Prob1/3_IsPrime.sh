read -p "Enter a number:" n
isPrime=1
if (( $n==0 )); then
        isPrime=0
else
        for (( i=2 ; i<=$((n/2)) ; ++i ))
        do
        if (( $(($n%$i))==0 )); then
                isPrime=0
                break
        fi
        done
fi
if (( $isPrime==1 )); then
        echo "$n is a Prime Number"
else
        echo "$n is not a Prime Number"
fi