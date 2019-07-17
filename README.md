# Endava Junior Devops Challenge

## For the purpose of this project I use a bash script

1. Creating a .shell file using vi (#!/bin/bash) and add START=$(date +%s) to start measure

2. Use mkdir to create a new project directory: 'mkdir dirname'

3. Then we use 'wget' command to download the content of 10 websites and '--output-document=' to name them: '--output-document=indexpage.html https://www.example.com

4. To count "href=" use 'grep' command with '-c':
grep -c href= indexpage.html >> text_file_to_save_the_result.txt 

5. Delete all new files with 'rm -rf' command:
rm -rf *.txt 

6. Add the following to end the measure: 
END=$(date +%s)
DIFF=$(( $END - $START ))
echo "It took only $DIFF seconds."

7. Enjoy!  
