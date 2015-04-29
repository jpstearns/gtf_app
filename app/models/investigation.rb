class Investigation < ActiveRecord::Base
	belongs_to :client
	belongs_to :applicant
	belongs_to :user
end
