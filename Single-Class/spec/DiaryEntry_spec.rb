require "DiaryEntry"

RSpec.describe DiaryEntry do
    it "Checks that reading_chunk returns correct length" do
        basic = DiaryEntry.new("Nick's Diary", "Hello my name is Nick and this is my diary wow")

        result = basic.reading_chunk(1,2)
        expect(result).to eq "Hello my"
    end

    it "Checks that reading_chunk returns correct length twice in a row" do
        basic = DiaryEntry.new("Nick's Diary", "Hello my name is Nick and this is my diary wow")
        basic.reading_chunk(1,2)
        result = basic.reading_chunk(1,2)
        
        expect(result).to eq "name is"
    end

    it "Checks that reading_chunk returns a shortened string when reaching the end of the word list" do
        basic = DiaryEntry.new("Nick's Diary", "Hello my name is Nick")
        basic.reading_chunk(1,2)
        basic.reading_chunk(1,2)
        result = basic.reading_chunk(1,2)
        
        expect(result).to eq "Nick"
    end

    it "Checks that reading_chunk restarts reading the original string after reaching the end" do
        basic = DiaryEntry.new("Nick's Diary", "Hello my name is Nick")
        basic.reading_chunk(1,2)
        basic.reading_chunk(1,2)
        basic.reading_chunk(1,2)
        result = basic.reading_chunk(1,2)
        
        expect(result).to eq "Hello my"
    end
end