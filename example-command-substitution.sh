[vagrant@scriptbox scripts]$ free -m
              total        used        free      shared  buff/cache   available
Mem:            990         187         284           7         517         654
Swap:          1023           0        1023
[vagrant@scriptbox scripts]$ free -m | grep Mem
Mem:            990         187         284           7         517         654
[vagrant@scriptbox scripts]$ free -m | grep Mem | awk '{print $4}'
284
[vagrant@scriptbox scripts]$ FREE_RAM=`free -m | grep Mem | awk '{print $4}'`
[vagrant@scriptbox scripts]$ echo $FREE_RAM
284
[vagrant@scriptbox scripts]$ echo "Free RAM is $FREE_RAM .mb"
Free RAM is 284 .mb

