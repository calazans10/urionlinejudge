def to_roman(number)
  symbols = {1 => 'I', 5 => 'V', 10 => 'X', 50 => 'L', 100 => 'C', 500 => 'D', 1000 => 'M'}
  letters = ['I', 'V', 'X', 'L', 'C', 'D', 'M']

  digits = number.to_s.reverse
  index = 0
  result = ''

  digits.each_char.each_with_index do |digit, index|
    number = digit.to_i
    index = index * 2
    symbol = ''

    if number == 4
      symbol = letters[index] + letters[index + 1]
    elsif number == 5
      symbol = letters[index + 1]
    elsif number == 9
      symbol = letters[index] + letters[index + 2]
    elsif number == 0
      raise "There is no 0 in roman" if digits.length == 1
    elsif number < 5
      symbol = letters[index] * number
    else
      symbol = letters[index + 1] + letters[index] * (number - 5)
    end

    result = symbol + result
  end

  result
end

num1 = gets.strip.to_i
puts to_roman(num1)
