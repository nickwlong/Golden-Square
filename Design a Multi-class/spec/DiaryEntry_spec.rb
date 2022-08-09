require "DiaryEntry"

RSpec.describe DiaryEntry do
    it "Initializes with title and contents, returns title" do
        august1st = DiaryEntry.new("August 1st", "Had baked beans on toast, yum.")
        result = august1st.title
        expect(result).to eq "August 1st"
    end
    it "Initializes with title and contents, returns contents" do
        august1st = DiaryEntry.new("August 1st", "Had baked beans on toast, yum.")
        result = august1st.contents
        expect(result).to eq "Had baked beans on toast, yum."
    end
end
