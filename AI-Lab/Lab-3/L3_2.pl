hypothesis(Patient, covid_19) :- symptom(Patient, fever),
                                 symptom(Patient, dry_cough),
                                 symptom(Patient, tiredness),
                                 symptom(Patient, loss_of_taste),
                                 symptom(Patient, loss_of_smell),
                                 symptom(Patient, chest_pain).

hypothesis(Patient, dengue) :- symptom(Patient, high_fever),
                               symptom(Patient, severe_headache),
                               symptom(Patient, muscle_pain),
                               symptom(Patient, joint_pain),
                               symptom(Patient, loss_of_appetite),
                               symptom(Patient, red_rash).

symptom(sourov, high_fever).
symptom(sourov, severe_headache).
symptom(sourov, muscle_pain).
symptom(sourov, joint_pain).
symptom(sourov, loss_of_appetite).
symptom(sourov, red_rash).
