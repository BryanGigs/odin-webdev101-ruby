def translate(string)
    vowels = ["a", "e", "i", "o", "u"]
    output = ""
    words = string.split
    words.each do |word|
        if vowels.include?(word[0])
            output += word + "ay "
        elsif "qu".include?(word[0..1])
            output += word[2..-1] + word[0..1] + "ay "
        elsif "qu".include?(word[1..2])
            output += word[3..-1] + word[0..2] + "ay "
        elsif vowels.include?(word[1])
            output += word[1..-1] + word[0] + "ay "
        elsif vowels.include?(word[2])
            output += word[2..-1] + word[0..1] + "ay "
        else 
            output += word[3..-1] + word[0..2] + "ay "
        end
    end
    return output.reverse.sub(" ", "").reverse
end



