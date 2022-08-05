def grammar_check(text)
    p text[0]
    p text[-1]
    if text.start_with?(/[A-Z]/) && text.end_with?("!","?",".")
        return true
    end
    false

end
