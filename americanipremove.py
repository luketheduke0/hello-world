
import sys

with open('iplist.txt', 'rw') as capturediplistfile:
    for capturedline in capturediplistfile:
        capturedlinearray = capturedline.split(".")
        
        with open('us_ips.csv', 'r') as usiplistfile:
            for usipline in usiplistfile:
                usiplinearray = usipline.split(",")
                usip0 = usiplinearray[0].split(".")
                usip1 = usiplinearray[1].split(".")
                
                if(int(capturedlinearray[0]) >= int(usip0[0]) & int(capturedlinearray[0]) <= int(usip1[0])):
                    if(int(capturedlinearray[1]) >= int(usip0[1]) & int(capturedlinearray[1]) <= int(usip1[1])):
                        if(int(capturedlinearray[2]) >= int(usip0[2]) & int(capturedlinearray[2]) <= int(usip1[2])):
                            if(int(capturedlinearray[3]) >= int(usip0[3]) & int(capturedlinearray[3]) <= int(usip1[3])):
                                print("American IP found")
                                print(str(int(capturedlinearray[3])))
                                print(str(usip0)+" "+str(usip1))
        
        #remove return character from line
        capturedlinearray[3] = capturedlinearray[3][:-1]
        
        
