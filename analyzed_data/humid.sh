#!/bin/bash

country_name="Rwanda" # we must be sure about the correct name
	
grep "${country_name}," ../raw_data/satelite_temperature_data.csv | sort -t, -k 4 -nr | uniq | cut -d , -f 1,2,4 > humidity_data_${country_name}.csv

   
