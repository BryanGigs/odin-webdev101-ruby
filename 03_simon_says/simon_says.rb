def echo(input)
    return input.to_s
end

def shout(input)
    return input.to_s.upcase
end

def repeat(input,repeats=1)
    puts "the default for times is " + repeats.to_s
    if repeats == 1
        output = input.to_s + " " + input.to_s
    else
        output = ""
        repeats.times do 
            output += input .to_s + " "
        end
        output = output.reverse.sub(" ", "").reverse        
    end
end

def start_of_word(word, index)
    word[0..index-1]  
end

def first_word(string)
    string.split[0]
end

def titleize(string)
    array = string.split
    little_words = ["a", "an", "the", "if", "and", "of", "on" "in", "over", "is"]
    output = ""
    array.each_with_index do |word, index|
        if index == 0
            output += word.capitalize + " "
        elsif little_words.include?(word)
            output += word + " "
        else
            output += word.capitalize + " "
        end
    end
    output_cleaned = output.reverse.sub(" ", "").reverse
end
