DROP TABLE IF EXISTS best_state;

CREATE TABLE best_state AS
SELECT hospitals.id, hospitals.name, hospitals.state, hospitals.rating
FROM hospitals;

DROP TABLE IF EXISTS best_hospital;

CREATE TABLE best_hospital AS
SELECT hospitals.id, hospitals.name, hospitals.rating
FROM hospitals;

DROP TABLE IF EXISTS nurse_impact;

CREATE TABLE nurse_impact AS
SELECT
hospitals.id, hospitals.name, hospitals.rating,
survey_responses.comm_nurses_floor,
survey_responses.comm_nurses_achievement,
survey_responses.comm_nurses_benchmark,
survey_responses.comm_nurses_baseline,
survey_responses.comm_nurses_perforamnce,
survey_responses.comm_nurses_achievementpoints,
survey_responses.comm_nurses_dimension

FROM hospitals
INNER JOIN survey_responses
ON (hospitals.id = survey_responses.id);
