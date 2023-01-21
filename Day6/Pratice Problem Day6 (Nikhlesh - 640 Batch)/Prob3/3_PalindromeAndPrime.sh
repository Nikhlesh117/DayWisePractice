function primenumber() {
        local n=$1
        local isPrime=1
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
                echo 1
        else
                echo 0
        fi
}

function palindrome() {
        local reverse=0
        local num=$1
        while (( $num!=0 ))
        do
                remainder=$(($num%10))
                reverse=$(( ($reverse*10)+$remainder ))
                num=$(($num/10))
        done
        echo $reverse
}
read -p "Enter a number: " number
prime="$( primenumber $(($number)) )"
if (($prime==1)); then
        reversedNumber="$( palindrome $(($number)) )"
        reversedPrime="$( primenumber $(($reversedNumber)) )"
        if (( $reversedPrime==1 )); then
                echo "The number Palindrome is a Prime Number"
        else
                echo "The number is Prime Number and its Palindrome is not a Prime number"
        fi
fi
