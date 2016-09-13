def number_of_moves(x1, y1, x2, y2)
  if x1 == x2 && y1 == y2
    0
  elsif x1 == x2 || y1 == y2 || (x1 - x2).abs == (y1 - y2).abs
    1
  else
    2
  end
end


while input = gets.strip
  if input == "0 0 0 0"
    break
  end

  puts number_of_moves(*input.split(' ').map(&:to_i))
end
