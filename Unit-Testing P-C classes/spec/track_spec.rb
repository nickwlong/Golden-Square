require "track"

RSpec.describe Track do
    it "checks for the inclusion of a keyword" do
        test = Track.new("abc", "def")
        result = test.matches?("bc")
        expect(result).to eq true
    end
end

