class Applicant < ActiveRecord::Base
	validates_presence_of :first_name, :last_name, :address, :city, :state, :social, :message => "Missing a required field" 
	validates_numericality_of :zip, message: "Zip Code must be a number"
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
	validates :social, format: { with: /^d{3}-d{2}-d{4}$/i, on: :create, :multiline => true }
	validates :phone1, format: { with: /^(?:(?:\+?1\s*(?:[.-]\s*)?)?(?:(\s*([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]‌​)\s*)|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\s*(?:[.-]\s*)?)?([2-9]1[02-‌​9]|[2-9][02-9]1|[2-9][02-9]{2})\s*(?:[.-]\s*)?([0-9]{4})$/i, on: :create, :multiline => true }
	validates :dob, format: { with: /^(([0-1]?[0-9])|([2][0-3])):([0-5]?[0-9])(:([0-5]?[0-9]))?$/, on: :create, :multiline => true }
end
