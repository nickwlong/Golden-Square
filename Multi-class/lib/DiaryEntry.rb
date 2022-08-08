class DiaryEntry
    def initialize(title, contents) # title, contents are strings
        fail "Missing entries" unless title.length.positive? && contents.length.positive?

       @title = title
       @contents = contents
       @number_of_words_read = 0
    end
  
    def title
      @title
    end
  
    def contents
      @contents
    end
  
    def count_words
        @contents.split(" ").size
    end
  
    def reading_time(wpm)
        read_time = count_words / wpm
        return read_time
    end
  
    def reading_chunk(wpm, minutes) 
        @number_of_words_read = 0 if @number_of_words_read >= @contents.split(" ").size
        readable_words = wpm * minutes
        start_at = @number_of_words_read
        end_at = readable_words + @number_of_words_read
        @number_of_words_read = end_at
        return @contents.split(" ")[start_at..end_at-1].join(" ")
    end
  end