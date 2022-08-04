require 'greet'

RSpec.describe "greet method" do
    it "Greets an input name" do
        result = greet('Nick')
        expect(result).to eq "Hello, Nick!"
    end
    it "Greets an input name" do
        result = greet('James')
        expect(result).to eq "Hello, James!"
    end
end
