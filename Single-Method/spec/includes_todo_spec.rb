require "includes_todo"

RSpec.describe "includes_todo method" do
    context "Empty string test" do
        it "fails" do
            expect {includes_todo("")}.to raise_error "No text entered."
        end
    end

    it "Checks for #TODO from a string containing #TODO" do
        result = includes_todo("#TODO Walk the dog") 
        expect(result).to eq true
    end

    it "Checks for #TODO from a string containing #TODO at end" do
        result = includes_todo("Walk the cat #TODO")
        expect(result).to eq true
    end

    it "Checks for #TODO from a string containing #TODO in middle" do
        result = includes_todo("Make a #TODO list")
        expect(result).to eq true
    end

    it "Checks for #TODO without all capital letters" do
        result = includes_todo("#ToDO a text with not all capitals")
        expect(result).to eq false
    end

    it "Checks for #TODO from a string containing no #TODO" do
        result = includes_todo("Make test cases") 
        expect(result).to eq false
    end

    it "Checks for #TODO from a string containing just #TODO" do
        result = includes_todo("#TODO")
        expect(result).to eq true
    end
end
