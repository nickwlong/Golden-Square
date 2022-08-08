TrackList Class Design Recipe
1. Describe the Problem
<!-- As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them. -->

2. Design the Class Interface
Include the initializer and public methods with all parameters and return values.

``` ruby
class TrackList
    def initialize
        @tracklist #array of tracks, starts as empty.
    end

    def add(track) #track is a string of the Artist/Song
        #No return required
    end

    def list
        #returns the list of tracks from the class variable
    end
```

3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.
``` ruby
#1

augustplaylist = TrackList.new
augustplaylist.add("Radiohead - Exit Music")
augustplaylist.list # => ["Radiohead - Exit Music"]

#2
augustplaylist = TrackList.new
augustplaylist.add("Radiohead - Exit Music")
augustplaylist.add("Scatman John - Scatman")
augustplaylist.list # => ["Radiohead - Exit Music", "Scatman John - Scatman"]

#3 - failure when requesting an empty list
augustplaylist = TrackList.new
augustplaylist.list # fail "Tracklist is empty"

```

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.