def reading_time(text)
    wordcount = text.split(" ").size
    seconds_per_word = 0.3
    total_time = wordcount * seconds_per_word
    return "#{total_time} seconds"
end