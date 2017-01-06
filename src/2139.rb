month, day = gets.strip.split(' ').map(&:to_i)
days = ((Time.utc(2016, 12, 25) - Time.utc(2016, month, day)) / 86_400).to_i

if days < 0
  puts 'Ja passou!'
elsif days.zero?
  puts 'E natal!'
elsif days == 1
  puts 'E vespera de natal!'
else
  puts "Faltam #{days} dias para o natal!"
end
