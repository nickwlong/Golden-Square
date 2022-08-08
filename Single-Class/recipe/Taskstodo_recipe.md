{{PROBLEM}} Class Design Recipe
1. Describe the Problem
As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

2. Design the Class Interface
Include the initializer and public methods with all parameters and return values.

``` ruby
class Taskstodo
  def initialize
    @tasks = [] #array of strings from add method
  end

  def add(task) #task is a string representing the instruction
    #No return
  end

  def list 
    #returns the full list of tasks added as strings
  end

  def complete(task)
    #Return nothing
    #Fails if task doesn't exist
  end
end
```

3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

# EXAMPLE
```ruby
todolist = Taskstodo.new
todolist.add("Walk the dog")
todolist.list # => ["Walk the dog"]

todolist = Taskstodo.new
todolist.add("Walk the dog")
todolist.add("Walk the cat")
todolist.list # => ["Walk the dog","Walk the cat"]

todolist = Taskstodo.new
todolist.add("Walk the dog")
todolist.add("Walk the cat")
todolist.complete("Walk the dog")
todolist.list # => ["Walk the cat"]

todolist = Taskstodo.new
todolist.add("Walk the dog")
todolist.add("Walk the cat")
todolist.complete("Walk the hamster")
todolist.list # fails "No such task"

```

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.