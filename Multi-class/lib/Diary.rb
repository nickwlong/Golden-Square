class Diary
    def initialize
        @entries = []
    end
  
    def add(entry) # entry is an instance of DiaryEntry
      @entries << entry
    end
  
    def all
      @entries
    end
  
    def count_words
        count = 0
        @entries.each do |entry|
            count += entry.contents.split(" ").size
        end
        count
    end
  
    def reading_time(wpm) 
        read_time = count_words / wpm
        return read_time
    end
  
    def find_best_entry_for_reading_time(wpm, minutes)
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
  end
  
  # File: lib/diary_entry.rb
  