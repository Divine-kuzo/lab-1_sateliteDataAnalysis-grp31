#!/bin/bash
tail -n +2 satelite_temperature_data.csv | sort -t, -k2 -nr | head -10 > highest_temp.csv

echo "Top 10 highest temperatures have been saved to highest_temp.csv"
