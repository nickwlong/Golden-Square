require "Stringrepeater" 

RSpec.describe StringRepeater do
    it "Checks output is multiplying the string correctly" do
        terminal = double(:terminal)

        expect(terminal).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
        expect(terminal).to receive(:puts).with("Please enter a string").ordered
        expect(terminal).to receive(:gets).and_return("TWIX").ordered
        expect(terminal).to receive(:puts).with("Please enter a number of repeats").ordered
        expect(terminal).to receive(:gets).and_return("10").ordered
        expect(terminal).to receive(:puts).with("Here is your result:").ordered
        expect(terminal).to receive(:puts).with("TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX").ordered

        twix = StringRepeater.new(terminal)
        twix.run
    end

    it "fails if first input is not a string" do
        terminal = double(:terminal)

        expect(terminal).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
        expect(terminal).to receive(:puts).with("Please enter a string").ordered
        expect(terminal).to receive(:gets).and_return("10").ordered

        twix = StringRepeater.new(terminal)
        expect{ twix.run }.to raise_error "You must enter a string!"
    end

    it "fails if second input is not a number" do
        terminal = double(:terminal)

        expect(terminal).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
        expect(terminal).to receive(:puts).with("Please enter a string").ordered
        expect(terminal).to receive(:gets).and_return("TWIX").ordered
        expect(terminal).to receive(:puts).with("Please enter a number of repeats").ordered
        expect(terminal).to receive(:gets).and_return("Nick").ordered

        twix = StringRepeater.new(terminal)
        expect{ twix.run }.to raise_error "You must enter a number!"
    end

end