inches=42
feets=$(echo $inches | awk '{printf "%.4f ", $1 / 12 }')
echo "42 inches = $feets feets"
