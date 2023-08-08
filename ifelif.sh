#!/bin/bash

value=$(ip addr show | grep -v LOOPBACK | grep -ic mtu)

if [ $value -eq 1 ]
then 
  echo "1 Active Network Interface Found"
elif [ $value -gt ]
then
  echo "Found multiple active intergface"
fi
















































