class StringRepeater
    def initialize(terminal)
        @terminal = terminal
    end

    def run
        @terminal.puts "Hello. I will repeat a string many times."
        @terminal.puts "Please enter a string"
        string = get_string
        @terminal.puts "Please enter a number of repeats"
        num = get_number
        @terminal.puts "Here is your result:"
        @terminal.puts result(string, num)
    end

    private

    def get_string
        response = @terminal.gets.chomp 
        return response unless response.to_i.to_s == response
        fail "You must enter a string!"
    end

    def get_number
        response = @terminal.gets.chomp 
        return response.to_i if response.to_i.to_s == response
        fail "You must enter a number!"
    end

    def result(string, num)
        result = string * num
        return result
    end

end
