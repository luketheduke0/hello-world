

import csv
import ipaddress

infile_path = 'iplist.txt'
ip_ranges_file_path = 'us_ips.csv'
outfile_path = 'usa_removed_iplist.txt'

ip_ranges = []
with open(ip_ranges_file_path, 'r', newline='') as ip_ranges_file:
    spamreader = csv.reader(ip_ranges_file)
    for row in spamreader:
        if(row != ""):
            ip_range_min = str(row[0])
            ip_range_max = str(row[1])
            ip_ranges.append((ip_range_min, ip_range_max))
    
with open(infile_path, 'r') as ip_strs, open(outfile_path, 'a') as outfile:
    for ip_str in ip_strs:
        print(ip_str[0])
        ip = ipaddress.ip_address(ip_str[0])
        print(str(ip))

    
