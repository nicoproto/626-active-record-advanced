class Doctor < ActiveRecord::Base
  has_many :interns # => doctor.interns (returns an array of instances of interns)
  has_many :consultations

  has_many :patients, through: :consultations # requires the has_many :consultations first

  validates :last_name, presence: true, uniqueness: { scope: :first_name }
end

# doctor = Doctor.last
# patients = []
# doctor.consultations.each do |consultation|
#   # Consultation has a doctor_id and patient_id
#   patient = consultation.patient
#   if !patients.include?(patient)
#     patients << patient
#   end
# end