#!/bin/bash

## Line by line way. How to generalize with regex?

tail -n +2 effective_care.csv > effective_care_nohead.csv
tail -n +2 hospitals.csv > hospitals_nohead.csv
tail -n +2 survey_responses.csv > survey_responses_nohead.csv

hdfs dfs -mkdir effective_care
hdfs dfs -put effective_care_nohead.csv effective_care

hdfs dfs -mkdir hospitals
hdfs dfs -put hospitals_nohead.csv hospitals

hdfs dfs -mkdir survey_responses
hdfs dfs -put survey_responses_nohead.csv survey_responses

## Attempt at for loop. Ask Amit.

# for file in *nohead.csv
# do
# hdfs dfs -put $file <folder>
# done
