require "check_codeword"

RSpec.describe "check_codeword method" do
    it "checks for appropriate keyword" do
        result = check_codeword("horse")
        expect(result).to eq "Correct! Come in."
    end
    it "checks for appropriate keyword" do
        result = check_codeword("hoe")
        expect(result).to eq "Close, but nope."
    end
    it "checks for appropriate keyword" do
        result = check_codeword("he")
        expect(result).to eq "Close, but nope."
    end
    it "checks for appropriate keyword" do
        result = check_codeword("elephant")
        expect(result).to eq "WRONG!"
    end
end