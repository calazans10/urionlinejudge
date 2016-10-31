number = gets.strip.to_f

if (0..25).include?(number)
  puts "Intervalo [0,25]"
elsif (25..50).include?(number)
  puts "Intervalo (25,50]"
elsif (50..75).include?(number)
  puts "Intervalo (50,75],"
elsif (75..100).include?(number)
  puts "Intervalo (75,100]"
else
  puts "Fora de intervalo"
end
