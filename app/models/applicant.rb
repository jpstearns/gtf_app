class Applicant < ActiveRecord::Base
   
    has_many :investigations

	validates_presence_of :first_name, :last_name, :social, :dob
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
	validates :social, format: {with: /^(\d{3}-?\d{2}-?\d{4}|XXX-XX-XXXX)$/i, :multiline => true, on: :create}

	def self.search(search)
	  if search
	   @applicants = Applicant.where("first_name LIKE ?", "%#{search}%")
	  else
	    @applicants = Applicant.all
	  end
	end
end
