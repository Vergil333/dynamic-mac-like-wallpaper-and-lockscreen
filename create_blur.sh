#!/bin/bash

for w in mojave_dynamic_*.jpeg
do
	echo "Converting $w file..."
	convert $w -blur 0x5 lockscreen/blur_$w
	convert lockscreen/blur_$w -filter Gaussian -resize 5% -define filter:sigma=2.5 -resize 2000% lockscreen/blur_$w
done
