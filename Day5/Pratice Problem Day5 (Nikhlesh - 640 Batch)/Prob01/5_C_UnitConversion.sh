no_of_plots=25
#1acr=43560 sqft
area_in_acr=$(echo $area_in_ft $no_of_plots | awk '{printf "%.4f ", $1  * $2 / 43560 }')
echo "The Area of $no_of_plots plots is $area_in_acr acres"
