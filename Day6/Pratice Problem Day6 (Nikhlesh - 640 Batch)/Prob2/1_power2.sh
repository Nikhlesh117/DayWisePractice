read -p "Enter a number:" n
i=1
while (( i<=$((2**$n)) ))
do
        table=$((2*$i))
        if (( $table>256 )); 
	then
                break
        else
                echo "2*$i:"$table
        fi
	(( i++ ))
done