require "Contact"

RSpec.describe Contact do
    it "Initializes with contact data, returns name" do
        nickl = Contact.new("Nick L", "0713568348123")
        result = nickl.name 
        expect(result).to eq "Nick L"
    end
    it "Initializes with contact data, returns number" do
        nickl = Contact.new("Nick L", "0713568348123")
        result = nickl.number
        expect(result).to eq "0713568348123"
    end
    it "Initializes with contact data, returns contact_detail" do
        nickl = Contact.new("Nick L", "0713568348123")
        result = nickl.contact_detail
        expect(result).to eq ["Nick L", "0713568348123"]
    end
end