length=60
breadth=40
area=$(( length * breadth ))
area_in_m=$(echo $area | awk '{printf "%.4f ", $1  * 0.3048 * 0.3048 }')
echo "Area of the rectangular plot is $area_in_m meters"



