class Applicant < ActiveRecord::Base
	validates_presence_of :first_name, :last_name, :address, :city, :state, :social, :message => "Missing a required field" 
	validates_numericality_of :zip, message: "Zip Code must be a number"
	validates_numericality_of :social, message: "Invalid Social Security Number"
	validates_length_of :zip, is: 5, message: "Zip Code must be 5 digits"
	validates_length_of :social, is: 9, message: "Invalid Social Security Number"
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
