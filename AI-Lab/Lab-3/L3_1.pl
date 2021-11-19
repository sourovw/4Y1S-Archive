hypothesis(Patient, measles) :- symptom(Patient, fever),
                                symptom(Patient, cough),
                                symptom(Patient, conjunctivitis),
                                symptom(Patient, runnynose),
                                symptom(Patient, rash).

hypothesis(Patient, flu):- symptom(Patient, fever),
                           symptom(Patient, headache),
                           symptom(Patient, bodypain),
                           symptom(Patient, chills),
                           symptom(Patient, sorethroat),
                           symptom(Patient, cough),
                           symptom(Patient, conjunctivitis),
                           symptom(Patient, runnynose).

hypothesis(Patient, mumps):- symptom(Patient, fever),
                             symptom(Patient, swollenglands).

hypothesis(Patient, chikenpox):- symptom(Patient, fever),
                                 symptom(Patient, rash),
                                 symptom(Patient, bodypain).

symptom(john, fever).
symptom(john, swollenglands).
