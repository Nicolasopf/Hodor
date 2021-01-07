#!/bin/bash

for i in $(seq 1 1024); do
curl -X POST -F 'id=2187' -F 'holdthedoor=submit' http://158.69.76.135/level0.php > /dev/null &
done
