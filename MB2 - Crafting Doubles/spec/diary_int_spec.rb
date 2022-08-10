require 'diary'
require 'secretdiary'

RSpec.describe "Tests integration" do
    it "reads the contents of the diary" do
        nickdiary = Diary.new("I ate an apple today")
        nick_secretdiary = SecretDiary.new(nickdiary)
        nick_secretdiary.unlock
        result = nick_secretdiary.read
        expect(result).to eq "I ate an apple today"
    end
    describe "check read method returns error if diary locked" do
        it "fails" do 
            nickdiary = Diary.new("I ate an apple today")
            nick_secretdiary = SecretDiary.new(nickdiary)
            expect{nick_secretdiary.read}.to raise_error "Go away!"
        end
    end

end