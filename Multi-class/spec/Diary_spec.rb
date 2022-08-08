require "Diary"

RSpec.describe Diary do
    xit "Returns an empty list if no entries" do
        
        Nick = Diary.new
        result = Nick.all
        expect(result).to eq []
    end



end