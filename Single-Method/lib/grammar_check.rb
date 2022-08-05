def grammar_check(text)
    if text.start_with?(/[A-Z]/) && text.end_with?("!","?",".")
        return true
    end
    false

end
