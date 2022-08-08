1. Describe the Problem

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

2. Design the Method Signature
Include the name of the method, its parameters, return value, and side effects.


```ruby
containstodo = includes_todo(text)

```
containstodo: boolean output (e.g. true)
text: string input to check for the inclusion of #TODO

3. Create Examples as Tests
Make a list of examples of what the method will take and return.

# EXAMPLE
``` ruby
includes_todo("") => fail "No text entered."
includes_todo("#TODO Walk the dog") => true
includes_todo("Walk the cat #TODO") => true
includes_todo("Make a #TODO list") => true
includes_todo("#ToDO a text with not all capitals") => false
includes_todo("Make test cases") => false
includes_todo("#TODO") => true


```
Encode each example as a test. You can add to the above list as you go.

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.