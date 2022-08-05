require "reading_time"

RSpec.describe "reading_time method" do
    it "returns string with number of seconds" do
        result = reading_time("This is a test text") 
        expect(result).to eq "1.5 seconds"
    end
    it "returns string with number of seconds when one word" do
        result = reading_time("One") 
        expect(result).to eq "0.3 seconds"
    end
    it "returns string with number of seconds" do
        result = reading_time("How many words is this text going to be? I think probably thirteen") 
        expect(result).to eq "3.9 seconds"
    end
end