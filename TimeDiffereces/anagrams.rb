def anagram(first_word, second_word)
  anas = first_anagrams(first_word)
  anas.include?(second_word)
end



def first_anagrams(word)
  i = 0
  anas = []
  sub_anas = word.split('').permutation(word.length).to_a
  sub_anas.each do |ana|
    anas << ana.join('')
  end
  return anas
end

def second_anagram(first_string, second_string)
  # start = Time.now
  first = first_string.split('')
  second_string.each_char do |char|
    first.delete(char) if first.include?(char)
  end
  first.empty?
  # finish = Time.now
  # return finish - start
end

def third_anagram(first_word, second_word)
  start = Time.now
  first_word.split('').sort.join('') == second_word.split('').sort.join('')
  finish = Time.now
  print finish - start
  puts
end

# def fourth_anagram(first_word, second_word)
#   hash1 = Hash.new(0)
#   hash2 = Hash.new(0)
#   first_word.each_char do |char|
#     hash1[char] += 1
#   end
#   second_word.each_char do |char|
#     hash2[char] += 1
#   end

#   hash1 == hash2
# end



def fourth_anagram(first_word, second_word)
  hash1 = Hash.new {|h, k| h[k] = []}
  first_word.each_char do |char|
    hash1[char] << char
  end
  second_word.each_char do |char|
    hash1[char] << char
  end
  hash1.values.all? {|ele| ele.length.even?}
end

p fourth_anagram('elvssis', 'vlissse')


p fourth_anagram('elevssis', 'vlissase')