echo "1. Feet to inch"
echo "2. Feet to Meter"
echo "3. Inch to Feet"
echo "4. Meter to Feet"
read -p "Enter your choice: " choice
case $choice in
 1)
 read -p "Enter in feet: " n
 res=$(($n*12))
 echo "Inches: $res"
 ;;
 2)
 read -p "Enter in feet: " n
 res=$(echo "scale=2;$n/3.281" | awk '{printf "%.4f", $2 }')
 echo "Meters: $res"
 ;;
 3)
 read -p "Enter in inch: " n
 res=$(echo "scale=2;$n/12" | awk '{printf "%.4f", $2 }')
 echo "Feet $res"
 ;;
 4)
 read -p "Enter in meter: " n
 res=$(echo "scale=2;$n*3.28084" | awk '{printf "%.4f", $2 }')
 echo "Feet $res"
 ;;
 *)
 echo "Invalid choice"
 ;;
esac
