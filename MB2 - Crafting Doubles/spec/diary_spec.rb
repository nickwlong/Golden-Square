require 'diary'

RSpec.describe Diary do
    it "checks read returns the string" do
        newdiary = Diary.new("I ate an apple")
        result = newdiary.read
        expect(result).to eq "I ate an apple"
    end
end
