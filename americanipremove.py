
import sys

with open('iplist.txt', 'rw') as iplistfile:
    for capturedline in iplistfile:
        capturedlinearray = capturedline.split(".")
        
        #remove return character from last ip
        capturedlinearray[3] = capturedlinearray[3][:-1]
        print(capturedlinearray[0]+"."+capturedlinearray[1]+"."+capturedlinearray[2]+"."+capturedlinearray[3])
