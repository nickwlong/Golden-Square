Diary Multi-Class Planned Design Recipe
1. Describe the Problem
<!-- As a user
So that I can record my experiences
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries <DONE>

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed <DONE>

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary <DONE>

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries <DONE>-->

2. Design the Class System
Consider diagramming out the classes and their relationships. Take care to focus on the details you see as important, not everything. The diagram below uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com

  ┌─────────────────────┐          ┌───────────────────────────┐
  │Diary                │          │ DiaryEntry                │
  │ add(entry)          │          │                           │
  │ all                 │◄─────────┤ initialize(title,contents)│
  │ count_words         │          │ title                     │
  │ reading_time        │          │ contents                  │
  │ best_entry_for_time │          ├───────────────────────────┤
  │                     │          │ Todo                      │
  │ todolist            ◄──────────┤  initialize(task)         │
  │ marktaskdone(task)  │          │                           │
  │ contactslist        │          │  task                     │
  │ deletecontact(name) │          │                           │
  └───────────────────▲─┘          ├───────────────────────────┤
                      │            │ Contact                   │
                      └────────────┤  initialize(name,number)  │
                                   │  name                     │
                                   │  number                   │
                                   └───────────────────────────┘
Also design the interface of each class in more detail.

``` ruby
class Diary
    def initialize
        @entries = [] #empty array to add to
        @todo_list = [] #empty array to add to
        @contacts_list = [] #empty array to add to
    end
    
    def add_entry(entry) #entry is from DiaryEntry
        #no return, adds entry to @entries
    end

    def all
        #returns all diary contents
    end

    def best_entry_for_time(wpm, minutes) #wpm is integer of words per minute reading time. Minutes is integer of available reading time.
        #returns the best entry to read according to time available and wpm reading rate.
    end

    def add_todo(task) #task is from ToDo 
        #no return, adds task to @todo_list
    end

    def todolist
        #returns list of all "todo" tasks
    end

    def marktaskdone(task) #task is a string to remove
        #no return, removes task from @todo_list
    end

    def add_contact(contact) #contact is from Contacts
        #no return, adds contact
    end

    def contactslist
        #returns list of contacts
    end

    def deletecontact(name) #name is a string to remove
        #removes contact based on name, no return.
    end
end

class DiaryEntry
    def initialize(title, contents) #title and contents are strings
        @title = title
        @contents = contents
    end

    def title
        #returns titles
    end

    def contents
        #returns contents
    end
end

class Todo
    def initialize(task) #task is a string
        @task = task
    end

    def task
        #returns the task
    end
end

class Contacts
    def initialize(name, number) #name and number are strings preferably (to prevent loss of the first zero from the number)
       @name = name
       @number = number
    end

    def contact_detail
        #returns name and number
    end

    def name
        #returns name of contact
    end

    def number
        #returns number of contact
    end
end




```
3. Create Examples as Integration Tests
Create examples of the classes being used together in different situations and combinations that reflect the ways in which the system will be used.
```ruby
#1 DiaryEntry check
    august1st = DiaryEntry.new("August 1st", "Had baked beans on toast, yum.")
    august2nd = DiaryEntry.new("August 2nd", "Had spaghetti hoops on toast, yummier!")
    august1st.title # => "August 1st"
    august1st.contents # => "Had baked beans on toast, yum."


#2 Todo check
    dogwalk = Todo.new("Walk the dog!")
    dogwalk.task # => "Walk the dog!"

#3 Contacts check
    nickl = Contacts.new("Nick L", "0713568348123")
    nickl.name # => "Nick L"
    nickl.number # => "0713568348123"

#4 Integration checks
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
    nickDiary.add_todo(dogwalk)
    nickDiary.add_todo(catwalk)
    nickDiary.add_contact(nickl)
    nickDiary.add_contact(jl)

    nickDiary.all # => ["Ate an apple","Ate a green apple","Ate one nice green leaf and a tin of baked beans")
    nickDiary.best_entry_for_time(2,2) # => "Ate a green apple"
    nickDiary.best_entry_for_time(1,3) # => "Ate an apple"
    nickDiary.todolist # => ["Walk the dog!", "Walk the cat!"]
    nickDiary.marktaskdone("Walk the dog"), nickDiary.todolist # => ["Walk the cat!"]
    nickDiary.contactslist # => [["Nick L", "0713568348123"], ["Juliet L", "073146715790"]]

```

5. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.