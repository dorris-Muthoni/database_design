-- retrieve firstname,lastname and date of birth
SELECT first_name, last_name, date_of_birth
FROM patients;

--  Retrieve the provider_id, first_name, and provider_specialty from the providers table
SELECT provider_id, first_name, provider_speciality
FROM provider;

-- Retrieve all patients whose first names start with "Ab"
SELECT first_name, last_name, date_of_birth
FROM patients
WHERE first_name LIKE 'Ab%';

-- Retrieve all providers whose specialties end with the letter "y"
SELECT first_name, last_name, provider_speciality
FROM provider
WHERE provider_speciality LIKE '%y';

-- Find all patients born after 1st January 1980:
SELECT first_name, last_name, date_of_birth
FROM patients
WHERE date_of_birth > '1980-01-01';

-- Retrieve visits where the acuity level is 2 or higher:
SELECT visit_id, patient_id, provider_id, acuity
FROM ed_visits
WHERE acuity >= 2;

-- Find patients who speak Spanish
SELECT first_name, last_name, language
FROM patients
WHERE language = 'Spanish';

--  Retrieve visits where the reason is "Migraine" and the disposition is "Admitted"
SELECT visit_id, patient_id, provider_id, reason, disposition
FROM ed_visits
WHERE reason = 'Migraine' AND disposition = 'Admitted';

-- Find patients born between 1975 and 1980
SELECT first_name, last_name, date_of_birth
FROM patients
WHERE date_of_birth BETWEEN '1975-01-01' AND '1980-12-31';

-- Retrieve patient names and sort them in alphabetical order by last name
SELECT first_name, last_name
FROM patients
ORDER BY last_name ASC;

-- List all visits sorted by the date of the visit, starting from the most recent
SELECT visit_id, patient_id, provider_id, visit_date
FROM ed_visits
ORDER BY visit_date DESC;

-- Retrieve all admissions where the primary diagnosis is "Stroke" and the discharge disposition is "Home"
SELECT admission_id, patient_id, primary_diagnosis, discharge_disposition
FROM admissions
WHERE primary_diagnosis = 'Stroke' AND discharge_disposition = 'Home';


-- Find providers who joined after 1995 and specialize in either Pediatrics or Cardiology
SELECT first_name, last_name, provider_speciality, join_date
FROM provider
WHERE join_date > '1995-01-01' AND provider_speciality IN ('Pediatrics', 'Cardiology');

-- List all discharges where the patient was discharged home, and the discharge date is within the first week of March 2018
SELECT discharge_id, admission_id, patient_id, discharge_date, discharge_disposition
FROM discharges
WHERE discharge_disposition = 'Home'
  AND discharge_date BETWEEN '2018-03-01' AND '2018-03-07';
