require 'Todo'
require 'Todolist'

RSpec.describe Todolist do
    it "Adds instance of Todo and returns one example of non-done todos" do
        newTask = Todo.new("Walk the dog")
        newList = Todolist.new
        newList.add(newTask)
        expect(newList.incomplete).to eq ["Walk the dog"]
    end
    it "Adds instances of Todo and returns one example of non-done todos with one other positive" do
        newTask = Todo.new("Walk the dog")
        newDoneTask = Todo.new("Walk the cat")
        newDoneTask.mark_done!
        newList = Todolist.new
        newList.add(newTask)
        newList.add(newDoneTask)
        expect(newList.incomplete).to eq ["Walk the dog"]
    end 
    it "Adds instances of Todo returns completed tasks" do
        newTask = Todo.new("Walk the dog")
        newDoneTask = Todo.new("Walk the cat")
        newDoneTask.mark_done!
        newList = Todolist.new
        newList.add(newTask)
        newList.add(newDoneTask)
        expect(newList.complete).to eq ["Walk the cat"] 
    end
    describe "Tests 'give_up!'" do
        it "Adds instances and makes all positive, then returns complete list" do
            newTask = Todo.new("Walk the dog")
            newDoneTask = Todo.new("Walk the cat")
            newDoneTask.mark_done!
            newList = Todolist.new
            newList.add(newTask)
            newList.add(newDoneTask)
            newList.give_up!
            expect(newList.complete).to include("Walk the cat", "Walk the dog")
        end
        it "Adds instances and makes all positive, then returns incomplete list" do
            newTask = Todo.new("Walk the dog")
            newDoneTask = Todo.new("Walk the cat")
            newDoneTask.mark_done!
            newList = Todolist.new
            newList.add(newTask)
            newList.add(newDoneTask)
            newList.give_up!
            expect(newList.incomplete).to eq []
        end
    end

end
