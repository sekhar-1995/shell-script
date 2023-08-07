#1
[vagrant@scriptbox scripts]$ VIRUS="covid-19"
[vagrant@scriptbox scripts]$ echo "Due to $VIRUS company lost $9 million."
Due to covid-19 company lost  million.

#2
[vagrant@scriptbox scripts]$ echo 'Due to $VIRUS company lost $9 million.'
Due to $VIRUS company lost $9 million.

#3
[vagrant@scriptbox scripts]$ echo "Due to $VIRUS company lost \$9 million."
Due to covid-19 company lost $9 million.


# so when a value is written inside "single Quote" i.e [''] for varible, then it will reasign/replace the value of the variable.
# But in the case of {''}, it removes the value of th especial charater like [$].
# for Ex:- the "#3", here we want to print the value of word followed by "$", but for $9 there is no value is assigned. In this case to print the value we will use "\" that will ignore thw special character i.e "$" & print the value
