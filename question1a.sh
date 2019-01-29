#!/bin/bash
echo "Input a new string:"
read InputString
echo "Input a new SubString:"
read InputSubString
echo "Output: "
echo "Number of substring occurence in String is"
echo $InputString | grep -o $InputSubString | wc -1
