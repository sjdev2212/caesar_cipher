def cesar (word ,shift)
  alphabet = ('a'..'z').to_a
  answer = []
caps= ''
word[0] == word[0].upcase ?  caps = 'up' : caps = 'down'
  word = word.downcase.split('')
  word.each do |letter|
  unless alphabet.include?(letter)
    answer.push(letter)
    next
   end
  answer.push(alphabet[(alphabet.index(letter) + shift) % 26])
  end

puts caps == 'up' ? answer.join.capitalize : answer.join
end 

puts cesar('What a string!', 5)