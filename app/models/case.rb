class Case < ActiveRecord::Base
	belongs_to :user
	belongs_to :applicant
	belongs_to :client
end
