class Investigation < ActiveRecord::Base
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
	        @key
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
	        @key
	    end
	end

	class Status
	    KEYS = [
	    	RECOMMENDED = "Recommended",
	    	NOT_RCOMMENDED ="Not Recommended",
	    	DASHES = "----------",
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
	        @key
	    end
	end

	class License
	    KEYS = [
	        OPERATION = "Operation License",
	        VENDOR= "Vendor License",
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
	        @key
	    end
	end
end
