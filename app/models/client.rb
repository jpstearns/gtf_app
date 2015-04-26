class Client < ActiveRecord::Base
	has_many :cases
	has_many :applicants, :through => :cases 
	validates_presence_of :clientName, :address1, :city, :state, :message => "Missing a required field" 

	def self.search(search)
	  if search
	    @clients = Client.where("clientName LIKE ?", "%#{search}%")
	  else
	    @clients = Client.all
	  end
	end
end
