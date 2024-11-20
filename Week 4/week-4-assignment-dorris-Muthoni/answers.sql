-- INSERT Data
INSERT INTO patients (first_name, second_name, date_of_birth, gender, language)
VALUES ('John', 'Doe', '1980-11-15', 'Male', 'English');


-- UPDATE Data
UPDATE patients
SET language = 'Spanish'
WHERE first_name = 'John' AND second_name = 'Doe';


-- DELETE Data
DELETE FROM patients
WHERE patient_id = 10;

-- To retrieve all the names and emails of providers, replacing any NULL email with 'N/A'
SELECT first_name, second_name, email
FROM providers
WHERE email IS NOT NULL

-- To retrieve the names and contact details of providers, replacing any missing phone number or email with 'Missing details'
SELECT provider_name,
       IFNULL(phone_number, 'Missing details') AS contact_details
FROM providers
UNION
SELECT provider_name,
       IFNULL(email, 'Missing details') AS contact_details
FROM providers;


-- To retrieve all providers whose specialty is pediatrics and are missing either of the contact details (phone number or email)
SELECT provider_name
FROM providers
WHERE specialty = 'Pediatrics'
  AND (phone_number IS NULL OR email IS NULL);
