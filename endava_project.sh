#!/bin/bash
#We use this command to start time measuring
START=$(date +%s)

echo "Good morning fellas. Let's get started."

#First, let's create new dir with 'mkdir' and use 'cd' to enter
mkdir endava_project
cd endava_project

#Then we use 'wget' command to download the content of 10 websites and '--output-document=' to name them
wget --output-document=werock.html https://www.werock.bg
wget --output-document=100beers.html https://100beers.bg
wget --output-document=tangra.html http://www.radiotangra.com
wget --output-document=dream.html https://www.dreamtravel.bg/
wget --output-document=mail.html https://mail.bg/auth/login
wget --output-document=endava.html https://www.endava.com/
wget --output-document=abv.html https://www.abv.bg/
wget --output-document=buena.html http://www.buenavistasocialclub.com/
wget --output-document=wacken.html https://www.wacken.com/
wget --output-document=tons.html https://70000tons.com/

#For counting we will use 'grep -c href=' and >> sight to create a new file
grep -c href= werock.html >> werock_href.txt
grep -c href= 100beers.html >> 100beers_href.txt
grep -c href= tangra.html >> tangra_href.txt
grep -c href= dream.html >> dream_href.txt
grep -c href= mail.html >> mail_href.txt
grep -c href= endava.html >> endava_href.txt
grep -c href= abv.html >> abv_href.txt
grep -c href= buena.html >> buena_href.txt
grep -c href= wacken.html >> wacken_href.txt
grep -c href= tons.html >> tons_href.txt


#Now we will delete all new 10 files using 'rm -rf *.txt' command
rm -rf *.txt

#Maesure execution time
END=$(date +%s)
DIFF=$(( $END - $START ))
echo "It took only $DIFF seconds. Cheers mate!"




