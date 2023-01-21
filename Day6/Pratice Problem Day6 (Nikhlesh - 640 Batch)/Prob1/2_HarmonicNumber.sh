read -p "Enter a number:" n
harmonic=0
for (( i=1 ; i<=n ; i++ ))
do
        div=`awk 'BEGIN{print 1/'$i'}'` 			
        harmonic=`awk 'BEGIN{print '$harmonic'+'$div'}'`	
done
echo "The nth Harmonic Number:$harmonic"