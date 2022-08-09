class Contact
    def initialize(name, number)
        @name = name
        @number = number
    end
    def contact_detail
        contact = []
        contact << name
        contact << number
    end
    def name
        @name
    end
    def number
        @number
    end
end