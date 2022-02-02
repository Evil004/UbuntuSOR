#!/bin/bash
#Poner la ip que deseamos testear
gateway="192.168.209.201"
log="/home/`whoami`/regPing-to-computer.txt"
error="/home/`whoami`/errorPing-to-computer.txt"
ping=`ping -c 3 $gateway`
 
if [ $? -eq 0 ]
then
 `date >> $log`
 `echo -e $ping "\n">> $log` 
else
 `echo -e "\n ¡¡¡¡ ERROR CON LA CONEXION !!!!" >> $error`
 `date >> $error`
 `echo $ping >> $error`
fi
