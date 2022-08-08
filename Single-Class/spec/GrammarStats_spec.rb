require 'GrammarStats'

RSpec.describe GrammarStats do
    it "Checks the grammar check works - true" do
        simple = GrammarStats.new
        result = simple.check("This is correct.")
        expect(result).to eq true
    end
    it "Checks the grammar check - no capital first" do
        simple = GrammarStats.new
        result = simple.check("this is incorrect.")
        expect(result).to eq false
    end
    it "Checks other punctuation works" do
        simple = GrammarStats.new
        result = simple.check("This is correct!")
        expect(result).to eq true
    end
    it "Checks the percentage works " do
        simple = GrammarStats.new
        result = simple.check("This is correct.")
        expect(result).to eq true
    end
    it "Checks the percentage counter works with no negatives" do
        simple = GrammarStats.new
        simple.check("This is correct.")
        result = simple.percentage_good
        expect(result).to eq 100
    end
    it "Checks the percentage counter works with 1 correct, 1 incorrect." do
        simple = GrammarStats.new
        simple.check("This is correct.")
        simple.check("this is not correct.")
        result = simple.percentage_good
        expect(result).to eq 50
    end
    it "Checks the percentage counter works with 1 correct, 3 incorrect." do
        simple = GrammarStats.new
        simple.check("This is correct.")
        simple.check("this is not correct.")
        simple.check("this is not correct")
        simple.check("this is also not correct")
        result = simple.percentage_good
        expect(result).to eq 25
    end

end