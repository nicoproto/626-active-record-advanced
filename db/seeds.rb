Consultation.destroy_all
Intern.destroy_all
Doctor.destroy_all

doc = Doctor.new(
  first_name: "Nico",
  last_name: "Who"
)
doc.save!

int1 = Intern.new(
  first_name: "Robert",
  last_name: "Robertson",
  doctor: doc,
)
int1.save

int2 = Intern.new(
  first_name: "Carla",
  last_name: "Carlson",
  doctor: doc,
)
int2.save

carlos = Patient.new(
  first_name: "Carlos",
  last_name: "Carlson"
)
carlos.save

consultation = Consultation.new(
  doctor: doc,
  patient: carlos
)
consultation.save