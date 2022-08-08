1. Describe the Problem

Veryify that a text starts with a capital and ends with a suitable sentence ending punctuation mark.

2. Design the Method Signature
Include the name of the method, its parameters, return value, and side effects.

grammar_correct = grammar_check(text)

grammar_correct: boolean (e.g. true)
text: string of input text (e.g. "Is this a grammatically correct sentence?")

# The method doesn't print anything or have any other side-effects
3. Create Examples as Tests
Make a list of examples of what the method will take and return.

grammar_check("This is correct.")
grammar_check("This is not with no full-stop")
grammar_check("this is not with no capital starter")
grammar_check("This checks for question mark?")
grammar_check("This also !")
grammar_check("What about a space? ")


4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.