class Appointment < ActiveRecord::Base
	belongs_to :physician
	belongs_to :appointment
end
