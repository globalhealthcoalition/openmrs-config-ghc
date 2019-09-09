select  patient_identifier.identifier as 'Patient Identifier',
  YEAR(now())-year(patient.birthdate) as Age,
  patient.gender as Gender,
  confirmed_diagnosis_view.name,
  confirmed_diagnosis_view.obs_datetime as 'Diagnosis Date',
  concat(provider.given_name, " ", provider.family_name) As Username,
  confirmed_diagnosis_view.diagnosis_type As 'Coded/Non-coded'
from confirmed_diagnosis_view
  inner join patient_identifier on confirmed_diagnosis_view.person_id = patient_identifier.patient_id
  inner join person patient on confirmed_diagnosis_view.person_id = patient.person_id
  inner join person_name provider on confirmed_diagnosis_view.provider = provider.person_id
and confirmed_diagnosis_view.obs_datetime BETWEEN '#startDate#' and '#endDate#';
