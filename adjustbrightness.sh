

current_brightness=$(xrandr --verbose | grep -i brightness | cut -f2 -d ' ' | head -n1)

step=$1

new_brightness=$(echo "$current_brightness+$step" | bc)


if [ $(echo "if (${new_brightness} == "1") 1 else 0" | bc) -eq 1 ] && [ $(echo "if (${step} < "0") 1 else 0" | bc) -eq 1 ]; then
   xrandr --output eDP --brightness $new_brightness
elif [ $(echo "if (${new_brightness} == "0") 1 else 0" | bc) -eq 1 ] && [ $(echo "if (${step} > "0") 1 else 0" | bc) -eq 1 ]; then
	xrandr --output eDP --brightness $new_brightness
elif [ $(echo "if (${new_brightness} > "0.2") 1 else 0" | bc) -eq 1 ] && [ $(echo "if (${new_brightness} < "1.1") 1 else 0" | bc) -eq 1 ]; then
	xrandr --output eDP --brightness $new_brightness
else
   echo fals
fi

