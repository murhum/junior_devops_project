#!/bin/bash
#We use this command to start time measuring
START=$(date +%s)

echo "Good morning fellas. Let's get started."

#First, let's create a variable with 10 random websites: 
WEB=( https://www.werock.bg https://100beers.bg http://www.radiotangra.com https://www.dreamtravel.bg https://dir.bg https://www.endava.com http://www.buenavistasocialclub.com https://www.wacken.com https://askubuntu.com http://exotictour.bg/ )


#Then we use for loop to download the content 
for element in "${WEB[@]}"; do
        wget "$element"
done

#For counting we will use 'grep -c href=' 
for i in index*; do
        grep -c href= index* > result.txt;
done

unset i; while read -r l; do echo $l > "href$((++i)).txt";done < result.txt


#Now we will delete all new files using 'rm -rf *.txt' command
rm -rf *.txt

#Maesure execution time
END=$(date +%s)
DIFF=$(( $END - $START ))
echo "It took only $DIFF seconds. Cheers mate!"
