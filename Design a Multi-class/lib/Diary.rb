class Diary
    def initialize
        @entries = [] #empty array to add to
        @todo_list = [] #empty array to add to
        @contacts_list = [] #empty array to add to
    end
    
    def add_entry(entry) #entry is from DiaryEntry
        @entries << entry
    end

    def all
        @entries.map{|entry| entry.contents}
    end

    def best_entry_for_time(wpm, minutes) 
        biggest_appropriate_entry = 0
        readable_words = wpm*minutes
        entry_to_read = ""
        for i in 0..@entries.size-1
            entry_size = @entries[i].contents.split(" ").size
            if entry_size <= readable_words && entry_size > biggest_appropriate_entry
                biggest_appropriate_entry = entry_size
                entry_to_read = @entries[i].contents
            end
        end
        
        fail "Your reading time is not long enough" unless entry_to_read.length.positive?
        entry_to_read
    end

    def add_todo(task) #task is from ToDo 
        @todo_list << task
    end

    def todolist
        @todo_list.map{|task| task.task} 
    end

    def marktaskdone(task_todelete)
        tasks = self.todolist
        fail "Task not found in to do list" unless tasks.include?(task_todelete)
        @todo_list.delete_if {|todo| todo.task == task_todelete}
    end

    def add_contact(contact) 
        @contacts_list << contact
    end

    def contactslist
        @contacts_list.map {|person| person.contact_detail}
    end

    def deletecontact(name)
        contacts = self.contactslist
        fail "Name not found in contacts" unless contacts.any?{|person| person[0] == name}
        @contacts_list.delete_if {|person| person.name == name}
    end
end