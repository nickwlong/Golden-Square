require "Calculator"

RSpec.describe InteractiveCalculator do
    it "Testing subtract function" do
        terminal = double(:terminal)
        expect(terminal).to receive(:puts).with("Hello. I will subtract two numbers").ordered
        expect(terminal).to receive(:puts).with("Please enter a number").ordered
        expect(terminal).to receive(:gets).and_return("7").ordered
        expect(terminal).to receive(:puts).with("Please enter another number").ordered
        expect(terminal).to receive(:gets).and_return("4").ordered
        expect(terminal).to receive(:puts).with("Here is your result:").ordered
        expect(terminal).to receive(:puts).with("7 - 4 = 3").ordered

        interactive_calculator = InteractiveCalculator.new(terminal)
        interactive_calculator.run
    end

    it "fails if given a string instead of a first number" do
        terminal = double(:terminal)
        expect(terminal).to receive(:puts).with("Hello. I will subtract two numbers").ordered
        expect(terminal).to receive(:puts).with("Please enter a number").ordered
        expect(terminal).to receive(:gets).and_return("ted").ordered

        interactive_calculator = InteractiveCalculator.new(terminal)
        expect{ interactive_calculator.run }.to raise_error "You must enter a number!"
    end

    it "fails if given a string instead of a second number" do
        terminal = double(:terminal)
        expect(terminal).to receive(:puts).with("Hello. I will subtract two numbers").ordered
        expect(terminal).to receive(:puts).with("Please enter a number").ordered
        expect(terminal).to receive(:gets).and_return("7").ordered
        expect(terminal).to receive(:puts).with("Please enter another number").ordered
        expect(terminal).to receive(:gets).and_return("ted").ordered

        interactive_calculator = InteractiveCalculator.new(terminal)
        expect{ interactive_calculator.run }.to raise_error "You must enter a number!"
    end

end