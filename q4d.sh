#!/bin/bash
echo "How many different types of characters used in the two files"
grep -o . ATaleofTwoCities.txt AliceInWonderland.txt | sort -u | tr -d '\n'
