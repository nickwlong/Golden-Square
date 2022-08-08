require "Todo"

RSpec.describe Todo do
    describe "Testing initialize method using task method" do
        it "returns the task string" do
            newTask = Todo.new("Walk the dog")
            expect(newTask.task).to eq "Walk the dog"
        end
    end
    describe "Checking status of mark_done/done?" do
        it "Has a default complete status of false" do
            newTask = Todo.new("Walk the dog")
            expect(newTask.done?).to eq false   
        end
        it "Uses mark_done to change status to true and returns true" do
            newTask = Todo.new("Walk the dog")
            newTask.mark_done!
            expect(newTask.done?).to eq true
        end
    end

end
