#! bin/bash

START_TIME=$(date +"%T")
 
echo "Script started at: $START_TIME"
sleep 3

END_TIME=$(date +"%T")
echo "Script ended at: $END_TIME"
TOTAL_TIME=$(( $(date -d "$END_TIME" +%s) - $(date -d "$START_TIME" +%s) ))
echo "Total execution time: $TOTAL_TIME seconds"    
echo "Script executed at: $TIMESTAMPS"
echo "Script ended at: $END_TIME"
echo "Total execution time: $TOTAL_TIME seconds"
echo "Script started at: $START_TIME"
echo "Script ended at: $END_TIME"