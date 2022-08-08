class GrammarStats
    def initialize
      @count_total = 0.0
      @count_correct = 0.0
      @count_incorrect = 0.0
    end
  
    def check(text) # text is a string
        if text.start_with?(/[A-Z]/) && text.end_with?("!","?",".")
            @count_total += 1
            @count_correct += 1
            return true
        end
        @count_total += 1
        @count_incorrect += 1
        false
    end
  
    def percentage_good
      # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.
      percentage_correct = @count_correct / @count_total * 100
      return percentage_correct
    end
  end