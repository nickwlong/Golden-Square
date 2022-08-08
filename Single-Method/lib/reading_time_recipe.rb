1. Describe the Problem

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

2. Design the Method Signature
Include the name of the method, its parameters, return value, and side effects.

readingtime = reading_time(text)
readingtime: string (e.g. "15 seconds")
text: string (e.g. "This is a set of text")

# The method doesn't print anything or have any other side-effects
3. Create Examples as Tests
Make a list of examples of what the method will take and return.

# EXAMPLE
200 words per minute is 200 per 60 seconds

reading_time("This is a test text") => "1.5 seconds"
reading_time("One") => "0.3 seconds"
reading_time("How many words is this text going to be? I think probably thirteen") => "3.9 seconds"

Encode each example as a test. You can add to the above list as you go.

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.