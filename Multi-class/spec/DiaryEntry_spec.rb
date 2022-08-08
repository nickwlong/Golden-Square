require "DiaryEntry"

RSpec.describe DiaryEntry do
    context "Missing contents in initialize" do
        it "fails" do
            expect { DiaryEntry.new("August 1st","") }.to raise_error "Missing entries"
        end
    end
    context "Missing title in initialize" do
        it "fails" do
            expect { DiaryEntry.new("","Had coffee") }.to raise_error "Missing entries"
        end
    end
    context "Missing entries in initialize" do
        it "fails" do
            expect { DiaryEntry.new("", "") }.to raise_error "Missing entries"
        end
    end


    it "returns title" do
        Nicks = DiaryEntry.new("August 1st", "Had toast for breakfast.. yum")
        result = Nicks.title
        expect(result).to eq "August 1st"
    end
    it "returns contents" do
        Nicks = DiaryEntry.new("August 1st", "Had toast for breakfast.. yum")
        result = Nicks.contents
        expect(result).to eq "Had toast for breakfast.. yum"
    end 

    it "returns word count of contents" do
        Nicks = DiaryEntry.new("August 1st", "Had toast for breakfast.. yum")
        result = Nicks.count_words
        expect(result).to eq 5
    end 

    it "reading time test" do
        Nicks = DiaryEntry.new("August 1st", "Had toast for breakfast.. yum yum")
        result = Nicks.reading_time(2)
        expect(result).to eq 3
    end  
    describe "reading_chunk method" do

        it "returns reading_chunk " do
            Nicks = DiaryEntry.new("August 1st", "Had toast for breakfast.. yum")
            result = Nicks.reading_chunk(2, 1)
            expect(result).to eq "Had toasst"
        end  

    end
end
