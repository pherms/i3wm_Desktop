#!/bin/bash

degrees=$(exec sensors | grep -oP 'Package.*?\+\K[0-9]+')
echo  $degrees C

[${degrees} -gt 50 ] && echo "color=#FF8000"

exit 0
