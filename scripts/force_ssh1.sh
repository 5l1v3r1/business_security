#!/bin/bash

while read line
 do
  echo "Trying: $line"
  echo ssh -p7337 ghcetraro@bobserver.ce.ad --password "$line" ## NOT REAL CODE
 done < word_list_short.txt
