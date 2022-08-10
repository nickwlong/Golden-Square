require "secretdiary"

RSpec.describe SecretDiary do
    it "reads entries in the diary" do
        newdiary = double(:fake_diary, read: "FAKE ENTRY")
        result = newdiary.read
        expect(result).to eq "FAKE ENTRY"
    end
    it "fails" do
        newdiary = SecretDiary.new(double(:fake_diary, read: "FAKE ENTRY")) 
        newdiary.lock
        expect{newdiary.read}.to raise_error "Go away!"
    end
end

