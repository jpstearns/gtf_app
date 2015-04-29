class Investigation < ActiveRecord::Base
	belongs_to :user
	belongs_to :applicant
	belongs_to :client
end
