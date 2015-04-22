class Investigation < ActiveRecord::Base
	def full_name
		return first_name + " " + last_name
	end

	def describe
		return "#{first_name} #{last_name} is being investigated"
	end
end
	