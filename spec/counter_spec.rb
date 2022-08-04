require "counter"

RSpec.describe "counter class check" do
    it "Checks counter works" do
        newCount = Counter.new
        newCount.add(5)
        result = newCount.report() 
        expect(result).to eq  "Counted to 5 so far."
    end

    it "Checks counter works" do
        newCount = Counter.new
        newCount.add(10)
        newCount.add(15)
        result = newCount.report() 
        expect(result).to eq  "Counted to 25 so far."
    end

    it "Checks counter works" do
        newCount = Counter.new
        newCount.add(0)
        result = newCount.report() 
        expect(result).to eq  "Counted to 0 so far."
    end

    it "Checks counter works" do
        newCount = Counter.new
        newCount.add(5)
        newCount.add(15)
        newCount.add(100)
        result = newCount.report() 
        expect(result).to eq  "Counted to 120 so far."
    end
end
