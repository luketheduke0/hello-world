# By cyphase in #python on FreeNode
# Submitted to GitHub with their permission
# Initial commit of this file is cyphase's implementation, minus lines
# two, three and four. Anything after is by luketheduke0 on GitHub.

import csv
import ipaddress


def ip_tuple(ip_str):
    return tuple(int(octet) for octet in ip_str.split('.'))


infile_path = 'iplist.txt'
ip_ranges_file_path = 'us_ips.csv'
outfile_path = 'usa_removed_iplist.txt'


ip_ranges = []
with open(ip_ranges_file_path, 'r', newline='') as ip_ranges_file:
    ip_ranges_reader = csv.reader(ip_ranges_file)
    for start_ip_str, end_ip_str, __, __, __ in ip_ranges_reader:
        start_ip, end_ip = ip_tuple(start_ip_str), ip_tuple(end_ip_str)
        ip_ranges.append((start_ip, end_ip))


with open(infile_path, 'r') as ip_strs, open(outfile_path, 'a') as outfile:
    for ip_str in ip_strs:
        ip = ip_tuple(ip_str)

        is_american = any(start_ip <= ip <= end_ip
                          for start_ip, end_ip in ip_ranges)

        if is_american:
            print("American IP is removed: {0}".format(ip_str))
        else:
            outfile.write("{}\n".format(ip_str))

