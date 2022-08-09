require "Contact"
require "Diary"
require "DiaryEntry"
require "Todo"

RSpec.describe Diary do
    august1st = DiaryEntry.new("August 1st", "Ate an apple")
    august2nd = DiaryEntry.new("August 2nd", "Ate a green apple")
    august3rd = DiaryEntry.new("August 3rd", "Ate one nice green leaf and a tin of baked beans")
    dogwalk = Todo.new("Walk the dog!")
    catwalk = Todo.new("Walk the cat!")
    nickl = Contact.new("Nick L", "0713568348123")
    jl = Contact.new("Juliet L", "073146715790")
    nickDiary = Diary.new
    nickDiary.add_entry(august1st)
    nickDiary.add_entry(august2nd)
    nickDiary.add_entry(august3rd)
    nickDiary.add_todo(dogwalk)
    nickDiary.add_todo(catwalk)
    nickDiary.add_contact(nickl)
    nickDiary.add_contact(jl)
    describe "Testing add_entry and all methods" do
        it "Tests diary entries are added and contents are returned in all method" do
            result = nickDiary.all
            expect(result).to include("Ate an apple", "Ate a green apple", "Ate one nice green leaf and a tin of baked beans") #ignores the order of the array 
        end
    end

    describe "Testing best_entry_for_time method" do
        it "Checks for appropriate return when only one correct option" do
            result = nickDiary.best_entry_for_time(1,3)
            expect(result).to eq "Ate an apple"
        end
        it "Returns longest entry from two possible options" do
        result = nickDiary.best_entry_for_time(2,2)
        expect(result).to eq "Ate a green apple"
        end
    end

    describe "Testing add_todo and todolist methods" do
        it "Checks tasks are added to list and returns all tasks" do 
            result = nickDiary.todolist
            expect(result).to include("Walk the dog!", "Walk the cat!")
        end
    end
    describe "Testing marktaskdone method" do
        it "Removes Walk the dog! and returns the other tasks" do
            nickDiary.marktaskdone("Walk the dog!")
            result = nickDiary.todolist
            expect(result).not_to include("Walk the dog!")
        end
        it "fails" do
            expect{nickDiary.marktaskdone("Walk the hamster!")}.to raise_error "Task not found in to do list"
        end
    end
    describe "Testing add_contact and contactslist methods" do
        it "Adds contacts and returns a contactlist" do
            result = nickDiary.contactslist
            expect(result).to include(["Nick L", "0713568348123"], ["Juliet L", "073146715790"])
        end
    end
    describe "Testing deletecontact method" do
        it "Removes a contact from contacts_list" do
            nickDiary.deletecontact("Nick L")
            result = nickDiary.contactslist
            expect(result).not_to include(["Nick L", "0713568348123"])
        end
    end
end