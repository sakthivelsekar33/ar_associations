class Patient < ActiveRecord::Base
	has_many :appointments
	has_many :physicians, through: :appointments
end


=begin
	
# Quries

p = Patient.create(name: :patient_1)

#=> Will create record in physicians and also mapping record in appointments
1. p.physicians.create([{name: :doctor_1}, {name: :doctor_2}])

2. p.physicians

#=> Will delete all the previously created records in mapping table Appointments and map it against the newly assigned record
 but the Physician records won't get deleted. Only the appointments will get removed
3. p.physicians = [Physician.create(name: :doctor_5)]
=end