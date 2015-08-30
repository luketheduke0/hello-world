# openhttp-collect
Port scans random IPs, saves results.

Use them at your own risk. I'm not liable for anything dumb you do. 
You can copy them, modify them, eat them, I don't care. They're 
simple scripts. If you want to modify it, fork it, make changes, and 
pull request it.

Ipcollect scans for common http ports and saves IP addresses with 
open http ports to iplist.txt. 
Ipview goes through the list and opens them in firefox. 
Ipportscan does a normal portscan for a selected IP. 
Americaniplist outputs every single US IP address to a file.
Americanipremove just filters US IPs and prints the array it's in, 
but does not do anything with it.

common-http-ports.txt from https://github.com/danielmiessler/SecLists
