#!/bin/bash

run1=( `echo $(echo {A..z}) | sed 's/\[ \] \^ \_ \` //'` )
run2=( `echo $(echo {A..z}) | sed 's/\[ \] \^ \_ \` //'` )
run3=( `echo $(echo {A..z}) | sed 's/\[ \] \^ \_ \` //'` )
run4=( `echo $(echo {A..z}) | sed 's/\[ \] \^ \_ \` //'` )

for a in "${run1[@]}"
 do
  for b in "${run2[@]}"
   do
    for c in "${run3[@]}"
     do
      for d in "${run4[@]}"
       do
        echo "$a$b$c$d"
       done
     done
   done
 done
