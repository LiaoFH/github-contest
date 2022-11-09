#!/bin/sh
time=$(date)
ping -c 5 192.168.253.128
if [ $? -eq 0 ]; then
        java -Dprofile=INTERNAL -jar /opt/selfhelp/selfhelp.jar inform fpga "$time : ping E4000T  success!"
else
        java -Dprofile=INTERNAL -jar /opt/selfhelp/selfhelp.jar inform fpga "$time : ping E4000T  fail!"
fi


ping -c 5 192.168.253.173
if [ $? -eq 0 ]; then
        java -Dprofile=INTERNAL -jar /opt/selfhelp/selfhelp.jar inform fpga "$time : ping 173  success!"
else
        java -Dprofile=INTERNAL -jar /opt/selfhelp/selfhelp.jar inform fpga "$time : ping 173 fail!"
fi

ping -c 5 192.168.253.172
if [ $? -eq 0 ]; then
        java -Dprofile=INTERNAL -jar /opt/selfhelp/selfhelp.jar inform fpga "$time : ping 172  success!"
else
        java -Dprofile=INTERNAL -jar /opt/selfhelp/selfhelp.jar inform fpga "$time : ping 172 fail!"
fi

ping -c 5 192.168.253.170
if [ $? -eq 0 ]; then
        java -Dprofile=INTERNAL -jar /opt/selfhelp/selfhelp.jar inform fpga "$time : ping 170  success!"
else
        java -Dprofile=INTERNAL -jar /opt/selfhelp/selfhelp.jar inform fpga "$time : ping 170 fail!"
fi

ping -c 5 192.168.253.206
if [ $? -eq 0 ]; then
        java -Dprofile=INTERNAL -jar /opt/selfhelp/selfhelp.jar inform fpga "$time : ping unmatched  success!"
else
        java -Dprofile=INTERNAL -jar /opt/selfhelp/selfhelp.jar inform fpga "$time : ping unmatched fail!"
fi
