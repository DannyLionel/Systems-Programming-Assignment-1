#!/bin/bash
echo "Number of Times both London and Paris appear"
grep -oe "London" -e "resetParis" ATaleofTwoCities.txt | wc -l
#count the number of times both the cites of London and Paris in A Tale of Two Cities
