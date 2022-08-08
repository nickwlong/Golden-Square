
  # File: lib/todo.rb
  class Todo
    def initialize(task) # task is a string
      @task_todo = task
      @complete = false
    end
  
    def task
        @task_todo
    end
  
    def mark_done!
        @complete = true
    end
  
    def done?
      @complete
    end
  end