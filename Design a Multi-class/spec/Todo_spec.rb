require "Todo"

RSpec.describe Todo do
    it "Initializes with a task, returns the task" do
        dogwalk = Todo.new("Walk the dog!")
        result = dogwalk.task
        expect(result).to eq "Walk the dog!"
    end
end




