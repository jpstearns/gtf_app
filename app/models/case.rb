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