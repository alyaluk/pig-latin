# Place your answer here

def to_latin_word(word)
    if word.downcase =~ /^[^aeiou]\w*/
        consonants = word.match(/\b[^aeiou]+(?=[aeiou])/).to_s
        return word.gsub(/\b[^aeiou]+(?=[aeiou])/,"") + consonants + "ay"
        else return word
    end
end

def to_latin_sentence(sentence)
    counter = sentence.downcase.scan(/(\W|^)[^aeiou]\w*/).size
    newsentence = ""
    words = sentence.split(" ")
    words.each do |word|
        newsentence << to_latin_word(word) + " "
    end
    return (newsentence.downcase).capitalize, "#{counter} words changes."
end

puts "What sentence would you like to translate?"
sentence = gets.chomp
to_latin_sentence(sentence)
