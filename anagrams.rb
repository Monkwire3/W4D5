def first_anagram?(word_1, word_2)
    possible_anagrams = word_1.chars.permutation.to_a
    possible_anagrams.map(&:join).include?(word_2)
end


# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true

def second_anagram?(word_1, word_2)
    word_2 = word_2.split("")
    word_1.each_char do |char|
        return false if word_2.index(char) == nil
        word_2.delete_at(word_2.index(char)) 
    end
    word_2.length == 0
end

# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")    #=> true

def third_anagram?(word_1, word_2)
    word_1.split("").sort == word_2.split("").sort
end

#p third_anagram?("gizmo", "sally")    #=> false
#p third_anagram?("elvis", "lives")    #=> true


def fourth_anagram?(word_1, word_2)
    count = Hash.new(0)

    word_1.each_char {|char| count[char] += 1 }
    word_2.each_char {|char| count[char] -= 1 }

    return count.values.all? {|v| v == 0}

end

# p fourth_anagram?('gizmo', 'sally')
# p fourth_anagram?('elvis', 'lives')