def includes_todo(text)
    fail "No text entered." if text.empty?
    text.include?("#TODO")
end