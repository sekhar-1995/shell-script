#1 IF we wnats to avail "Variables" for every user, we will place the variable in the vagrant user path i.e "/etc/profile"
#2 If we wants to avail "Variables" for every root user, we will place the variable in the root user path i.e "./bashrc"

#EX "#1" :- If I am a Vagrant user,then it will be like :- [vagrant@scriptbox~]$ vim /etc/profile , so ere we have to do modification
#EX "#2" :-
#As root user it would be like :- "source .bashrc" , then If I am a "root" user, then it will be like :- [root@scriptbox]$ vi .bashrc   
# So here under the ".bashrc" file. 
# Example is "export SEASON="Mansoon" , Now this variable is available for everyone"




#So moral is like if we wants to avail varibale for everyone we will edit "/etc/profile" file & if we wants to avail it for a specific user, then we will edit ".bashrc" file of that user.

  
