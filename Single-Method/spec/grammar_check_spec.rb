require "grammar_check"

RSpec.describe "grammar_check method" do
    it "checks appropriate grammar" do
        result = grammar_check("This is correct.") 
        expect(result).to eq true
    end
    it "checks appropriate grammar - no full stop" do
        result = grammar_check("This is not with no full-stop")
        expect(result).to eq false
    end
    it "checks appropriate grammar - lower case start" do
        result = grammar_check("this is not with no capital starter")
        expect(result).to eq false
    end
    it "checks appropriate grammar - ?" do
        result = grammar_check("This checks for question mark?")
        expect(result).to eq true
    end
    it "checks appropriate grammar - !" do
        result = grammar_check("This also !")
        expect(result).to eq true
    end
    it "checks appropriate grammar - ' '" do
        result = grammar_check("What about a space? ")
        expect(result).to eq false
    end
end