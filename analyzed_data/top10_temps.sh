#!/bin/bash

# Data analysis and automation
tail -n +2  ../raw_data/satelite_temperature_data.csv | sort -t, -k 3 -nr | uniq | head -10 | cut -d, -f 1,2,3 > highest_temp.csv

echo "Top 10 highest temperatures have been saved to highest_temp.csv"
