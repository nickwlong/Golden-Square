require 'Taskstodo'

RSpec.describe Taskstodo do
    it "Checks add returns one item" do
        todolist = Taskstodo.new
        todolist.add("Walk the dog")
        result = todolist.list
        expect(result).to eq ["Walk the dog"]
    end
    it "Checks add returns two items" do
        todolist = Taskstodo.new
        todolist.add("Walk the dog")
        todolist.add("Walk the cat")
        result = todolist.list
        expect(result).to eq ["Walk the dog","Walk the cat"]
    end
    it "Checks add returns two items and completes one" do
        todolist = Taskstodo.new
        todolist.add("Walk the dog")
        todolist.add("Walk the cat")
        todolist.complete("Walk the dog")
        result = todolist.list
        expect(result).to eq ["Walk the cat"]
    end
    context "When no such task has been created, it cannot be completed" do
        it "fails" do
            todolist = Taskstodo.new
            todolist.add("Walk the dog")
            todolist.add("Walk the cat")
            expect { todolist.complete("Walk the hamster") }.to raise_error "No such task."
        end
    end
end