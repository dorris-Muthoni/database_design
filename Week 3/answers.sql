-- Find the total number of patient admissions in the admissions table
SELECT COUNT(*) AS total_admissions
FROM admissions;

-- Calculate the average length of stay for all patients
SELECT AVG(length_of_stay) AS average_length_of_stay
FROM admissions;

-- Group admissions by primary_diagnosis and calculate the total number of admissions for each diagnosis
SELECT primary_diagnosis, COUNT(*) AS total_admissions
FROM admissions
GROUP BY primary_diagnosis;

-- Group admissions by service and calculate the average length of stay for each service
SELECT service, AVG(length_of_stay) AS average_length_of_stay
FROM admissions
GROUP BY service;

-- Group discharges by discharge_disposition and count the number of discharges in each category
SELECT discharge_disposition, COUNT(*) AS total_discharges
FROM discharges
GROUP BY discharge_disposition;

-- Group admissions by service and show services where the total number of admissions is greater than 5
SELECT service, COUNT(*) AS total_admissions
FROM admissions
GROUP BY service
HAVING COUNT(*) > 5;

--  Find the average length of stay for patients admitted with a primary diagnosis of "Stroke"
SELECT AVG(length_of_stay) AS average_length_of_stay
FROM admissions
WHERE primary_diagnosis = 'Stroke';

-- Group emergency department visits by acuity and calculate the total number of visits for each acuity level
SELECT acuity, COUNT(*) AS total_visits
FROM emergency_department_visits
GROUP BY acuity;

-- Group admissions by primary_diagnosis and service, showing the total number of admissions for each combination
SELECT primary_diagnosis, service, COUNT(*) AS total_admissions
FROM admissions
GROUP BY primary_diagnosis, service;

-- Group admissions by month (using the admission_date) and calculate the total number of admissions per month
SELECT DATE_FORMAT(admission_date, '%Y-%m') AS month, COUNT(*) AS total_admissions
FROM admissions
GROUP BY month(admission_date);

-- Find the maximum length of stay for each primary_diagnosis
SELECT primary_diagnosis, MAX(length_of_stay) AS max_length_of_stay
FROM admissions
GROUP BY primary_diagnosis;

-- Group admissions by service and calculate both the total and average length of stay for each service, ordered by the highest average length of stay
SELECT service, COUNT(*) AS total_admissions, AVG(length_of_stay) AS average_length_of_stay
FROM admissions
GROUP BY service
ORDER BY average_length_of_stay DESC;

