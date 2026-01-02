#!/usr/bin/bash

# Deriving a Comma Separated File from the raw logs sample
echo 'ip,path,status' > cleaned_logs.csv
awk '{print $1","$9","$11}' logs.csv >> cleaned_logs.csv

# Counts unique status codes
awk -F',' 'NR>1 {print $3}' cleaned_logs.csv | sort | uniq -c >> status_count0.txt
