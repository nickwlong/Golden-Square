require 'count_words'

RSpec.describe 'Returns number of words in string' do
    it "Returns zero if no words" do
        result = count_words("")
        expect(result).to eq 0
    end

    it "Returns number of words" do
        result = count_words("one two three")
        expect(result).to eq 3
    end
end