# Web scrapping

Web scrapping is mostly used to find information in a WebSite, such as names, emails, etc. Also, this simulate an human navigating in the Website, being able to register, login, etc.

In this project, I will vote X times in an specific site for my ID (2187) in a basic website voting.

# Files and description solution
| File | Python Solution | Bash Solution |
| ----- | ----- | ------ |
[level 0](level_0) | Using requests module, use a for loop to send a post request with the data | For loop to send a POST request with curl with the -F flag to send data.
[level_1](level_1) | Using beatifulsoup and requests modules, use a for loop to create a consistent session, grep the KEY value from source code and send the post request with data + key | Use a for loop, send a post request, grep the key and send it again in another post request.
[level_2](level_2) | Same as level_1 but now add a header called Referer pointing to the referer requested by the server, also, use an user-agent | Same as level_1 but now add a header called referer and an user-agent.
[level_4](level_4) | I didn't do a python solution for this one | Same as level 2 but now using proxychains, select a random proxy from /etc/proxychains.conf.

## Author
Nicolas Urrea - https://github.com/Nicolasopf
