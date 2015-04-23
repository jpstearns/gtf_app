class Client < ActiveRecord::Base
	validates_presence_of :clientName, :address1, :city, :state, :message => "Missing a required field" 
end
