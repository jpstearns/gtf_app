class Case < ActiveRecord::Base
	belongs_to :user
	belongs_to :applicant
	belongs_to :client

	class Position
		KEYS = [
			CAGE_CASHIER = "Cage Cashier",
			DEALER = "Dealer",
			KEY_EMPLOYEE = "Key Employee",
			SECURTIY = "Security",
			SUPERVISOR = "Table Games Supervisor",
			]	

		def self.keys 
			KEYS
		end

		def self.all
			keys.map{|key| new(key)}
		end

		def initialize(key)
			@key = key 
		end

		def id
			@key 
		end

		def name
			I18n.t(@key, scope: :"models.case.positions")
		end
	end

	class LicenseType
		KEYS = [
			OPERATION_LICENSE = "Cage Cashier",
			VENDOR_LICENSE = "Vendor License",
			]	

		def self.keys 
			KEYS
		end

		def self.all
			keys.map{|key| new(key)}
		end

		def initialize(key)
			@key = key 
		end

		def id
			@key 
		end

		def name
			I18n.t(@key, scope: :"models.case.licensetypes")
		end
	end
	
	class Location
		KEYS = [
			TWIN_RIVER = "Twin River",
			NEWPORT_GRAND = "Newport Grand",
			]	

		def self.keys 
			KEYS
		end

		def self.all
			keys.map{|key| new(key)}
		end

		def initialize(key)
			@key = key 
		end

		def id
			@key 
		end

		def name
			I18n.t(@key, scope: :"models.case.locations")
		end
	end

	class Status
		KEYS = [
			RECOMMENDED = "Recommended",
			NOT_RECOMMENDED = "Not Recommended",
			DASHES = "  ----------  ",
			PENDING = "Pending",
			TEMPORARY = "Temporary",
			WITHDRAWN = "Withdrawn",
			]	

		def self.keys 
			KEYS
		end

		def self.all
			keys.map{|key| new(key)}
		end

		def initialize(key)
			@key = key 
		end

		def id
			@key 
		end

		def name
			I18n.t(@key, scope: :"models.case.statuses")
		end
	end
end

