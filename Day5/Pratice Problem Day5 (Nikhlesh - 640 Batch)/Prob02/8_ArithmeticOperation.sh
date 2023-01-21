read -p "Enter a: " a
read -p "Enter b: " b
read -p "Enter c: " c
A=$((a + b * c))
B=$((a % b + c))
C=$((c + a / b))
D=$((a * b + c))
max=$A
min=$A
if [ $B -gt $max ]
then
 max=$B
fi
if [ $C -gt $max ]
then
 max=$C
fi
if [ $D -gt $max ]
then
 max=$D
fi
if [ $B -lt $min ]
then
 min=$B
fi
if [ $C -lt $min ]
then
 min=$C
fi
if [ $D -lt $min ]
then
 min=$D
fi
echo "Max: $max"
echo "Min: $min"
