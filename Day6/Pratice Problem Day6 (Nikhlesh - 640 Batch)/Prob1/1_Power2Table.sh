read -p "Enter a number:" n
echo "The table of powers of two upto 2^$n:"
for (( i = 0; i <= n; i++ ))
do
    echo "$((2**i))"
done
