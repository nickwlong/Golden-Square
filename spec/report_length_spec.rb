require "report_length"

RSpec.describe "report_length method" do
    it "reports length of string" do
        result = report_length("Hello")
        expect(result).to eq "This string was 5 characters long."
    end
    it "reports length of string" do
        result = report_length("sausages")
        expect(result).to eq "This string was 8 characters long."
    end
    it "reports length of string" do
        result = report_length("sandwich with cheese please")
        expect(result).to eq "This string was 27 characters long."
    end
    it "reports length of string" do
        result = report_length(" ")
        expect(result).to eq "This string was 1 characters long."
    end
    it "reports length of string" do
        result = report_length("")
        expect(result).to eq "This string was 0 characters long."
    end

end
