class Book
    attr_accessor :title

    def title
        #@title = @title[0].capitalize + @title[1..-1]
        array = @title.split
        little_words = ["a", "an", "the", "if", "and", "of", "on", "in", "over", "is"]
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
        @title = output_cleaned

    end

end


