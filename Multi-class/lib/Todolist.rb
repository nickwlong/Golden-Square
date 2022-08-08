class Todolist
    def initialize
        @tasks = []
        #@tasks = [<obj1>, <obj2>, <obj3>]
    end
  
    def add(todo) # todo is an instance of Todo
        @tasks << todo
    end
  
    def incomplete
        incomplete_tasks = @tasks.select{|task| task.done? == false}
        incomplete_tasks = incomplete_tasks.map{|tasks| tasks.task}
    end
  
    def complete
        incomplete_tasks = @tasks.select{|task| task.done? == true}
        incomplete_tasks = incomplete_tasks.map{|tasks| tasks.task}
    end
  
    def give_up!
        @tasks.each {|task| task.mark_done!}
    end
  end
  