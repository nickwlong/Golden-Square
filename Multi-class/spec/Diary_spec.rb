require "Diary"
require "DiaryEntry"

RSpec.describe Diary do

    it "Check count words counts two entries appropriately" do
        august1st = DiaryEntry.new("August 1st", "Had toast for breakfast.. yum")
        august2nd = DiaryEntry.new("August 2nd", "Had an apple")
        nick = Diary.new
        nick.add(august1st)
        nick.add(august2nd)
        result = nick.count_words
        expect(result).to eq 8
    end
    context "Returns no reading entry, is shorter than the shortest string" do
        it "fails" do
            august1st = DiaryEntry.new("August 1st", "Had toast for breakfast.. yum")
            august2nd = DiaryEntry.new("August 2nd", "Had an apple")
            nick = Diary.new
            nick.add(august1st)
            nick.add(august2nd)
            expect { nick.find_best_entry_for_reading_time(2,1) }.to raise_error "Your reading time is not long enough"
        end
    end
    it "Check count words counts two entries appropriately" do
        august1st = DiaryEntry.new("August 1st", "Had toast for breakfast.. yum")
        august2nd = DiaryEntry.new("August 2nd", "Had an apple")
        nick = Diary.new
        nick.add(august1st)
        nick.add(august2nd)
        result = nick.find_best_entry_for_reading_time(2,2)
        expect(result).to eq "Had an apple"
    end
    it "Check count words counts two entries appropriately" do
        august1st = DiaryEntry.new("August 1st", "Had toast for breakfast.. yum")
        august2nd = DiaryEntry.new("August 2nd", "Had an apple")
        august3rd = DiaryEntry.new("August 3nd", "Had a green apple")
        nick = Diary.new
        nick.add(august1st)
        nick.add(august2nd)
        nick.add(august3rd)
        result = nick.find_best_entry_for_reading_time(2,2)
        expect(result).to eq "Had a green apple"
    end
end