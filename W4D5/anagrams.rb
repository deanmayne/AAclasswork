
def first_anagram?(str1, str2)
    chars = str1.split("")
    ana = chars.permutation.to_a
    chars2 = str2.split("")
    return ana.include?(chars2)
end

# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true

def second_anagram?(str1, str2)
    string2 = str2.split("")
    str1.chars.each do |char|
        return false if string2.find_index(char).nil?
        idx = string2.find_index(char)
        string2.delete_at(idx)
    end
    return true if string2.empty?
    false
end

# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")    #=> true


def third_anagram?(str1,str2)
    str1.split("").sort == str2.split("").sort
end

p third_anagram?("gizmo", "sally")    #=> false
p third_anagram?("elvis", "lives")    #=> true


def fourth_anagram?(str1,str2)
    hash = Hash.new(0)
    str1.chars.each do |char|
        hash[char] += 1
    end
    str2.chars.each do |char|
        hash[char] += 1
    end

    hash.values.all?(&:even?)
end

p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true



