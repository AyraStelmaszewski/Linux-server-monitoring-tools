#!/bin/bash

# Set the directory where the CSV file will be saved
output_dir="/home/ayra/monitoring"

# Create the output directory if it doesn't exist
mkdir -p "$output_dir"

# Generate the filename with the current date
filename="weeklybackup$(date +"%Y%m%d-%H%M").csv"

# Run the monitoring script and save the output to the CSV file
/home/ayra/monitoring/monitoring-script.sh > "$output_dir/$filename"

echo "Monitoring script output saved to: $output_dir/$filename"