

This project involves cleaning and analyzing satellite temperature data using Linux commands.

	PART B
This is how we did this part of the assignment:

cd analyzed_data/: changed directory to the analyzed data where the required file was supposed to be created
vi highest_temp.csv: created a file named highest_temp.csv as required in the question
i: to permit us to insert the text
#!/bin/bash: tells the system to use the bash shell to interpret the script

tail -n +2 satellite_temperature_data.csv
tail -n +2: prints all lines from the second line onward, removing the header from the CSV file
satellite_temperature_data.csv: the input file containing temperature data
| sort -t, -k2 -nr
|:  sends the output of the tail to sort.
sort -t,:  sets comma as the delimiter since it's a CSV file
-k2 tells sort to sort by the second column because it contains temperature values.
-n: Sort numerically
-r: get the highest values first.
| head -10 > highest_temp.csv
|:  sends the sorted output to the head.
head -10:  extracts the top 10 highest temperatures.
> highest_temp.csv:  redirects the result into highest_temp.csv
echo "Top 10 highest temperatures have been saved to highest_temp.csv."
Displays a message to confirm that the file has been successfully created.
wq: write and quit 
chmod +x: executes the file
ls: lists all the files in the analyzed data directory for confirmation if the file has been executed
git add . : adds the file to git hub
git commit -m “highest_temp.csv”: commits the file in git hub
git push: pushes the file to the main branch in git hub 



