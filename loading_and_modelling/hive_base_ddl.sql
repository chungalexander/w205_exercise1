##

drop table hospitals;

create external table hospitals
(
id int,
name string,
address string,
city string,
state string,
zip int,
county string,
phone int,
type string,
ownership string,
emergency string,
criteria_ehrs string,
rating string
)

ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
   "separatorChar" = ",",
   "quoteChar"     = '"',
   "escapeChar"    = "\\"
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospitals'
;

##

drop table survey_responses;

create external table survey_responses
(
id int,
name string,
address string,
city string,
state string,
zip int,
county string,
comm_nurses_floor float,
comm_nurses_achievement float,
comm_nurses_benchmark float,
comm_nurses_baseline float,
comm_nurses_perforamnce float,
comm_nurses_achievementpoints string,
comm_nurses_dimension string
)

ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
   "separatorChar" = ",",
   "quoteChar"     = '"',
   "escapeChar"    = "\\"
)
STORED AS TEXTFILE
LOCATION '/user/w205/survey_responses'
;

##

drop table effective_care;

create external table effective_care
(
id int,
name string,
address string,
city string,
state string,
zip int,
county string,
phone int,
condition string,
measure_id string,
measure_name string,
score string,
sample int,
footnote string,
measure_startdate string,
measure_enddate string
)

ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
   "separatorChar" = ",",
   "quoteChar"     = '"',
   "escapeChar"    = "\\"
)
STORED AS TEXTFILE
LOCATION '/user/w205/effective_care'
;
