require 'make_snippet'

RSpec.describe 'make_snippet method check'
#Test the following
#Input with 6 words - checks functionality
    it "Checks functionality - return first 5 words ..." do
        result = make_snippet('one two three four five six')
        expect(result).to eq 'one two three four five...'
    end

#Input with 0 words
    it "Checks if string is empty, should return empty" do
        result = make_snippet('')
        expect(result).to eq ''
    end
#Input with 5 words
    it "Checks functionality - return 5 words" do
        result = make_snippet('one two three four five')
        expect(result).to eq 'one two three four five'
    end
#Input with 3 words
    it "Checks functionality - return 3 words" do
        result = make_snippet('one two three')
        expect(result).to eq 'one two three'
    end
