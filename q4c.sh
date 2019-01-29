#!/bin/bash
echo "There are this many vowels in A Tale of Two Cities "
grep -o [aeiouAEIOU] ATaleofTwoCities.txt  | wc -l
echo "There are this many vowels in Slice In Wonderland"
grep -o [aeiouAEIOU] AliceInWonderland.txt  | wc -l
echo "number of times 'The' appears in A Tale of Two Cities"
grep -o "the" ATaleOfTwoCities.txt  | wc -l
echo "number of times 'The' appears in Alice In Wonderland"
grep -o "the"AliceInWonderland.txt | wc -l
sed -i 's/the/ABC/g' ATaleofTwoCities.txt 
sed -i 's/the/ABC/g' AliceInWonderland.txt

