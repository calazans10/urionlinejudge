def extract_information(number)
  thousands, cents = number.to_s.split('.')
  thousands = thousands.to_i
  cents = "0.#{cents}".to_f

  notes = {100 => 0, 50 => 0, 20 => 0, 10 => 0, 5 => 0, 2 => 0}
  coins = {1.00 => 0, 0.50 => 0, 0.25 => 0, 0.10 => 0, 0.05 => 0, 0.01 => 0}

  notes.each do |key, value|
    result = thousands / key

    if result > 0
      notes[key] += result
      thousands -= result * key
    end
  end

  cents += thousands

  coins.each do |key, value|
    result = (cents / key).round(2).to_i

    if result > 0
      coins[key] += result
      cents -= result * key
    end
  end

  puts 'NOTAS:'
  notes.each { |key, value| puts "#{value} nota(s) de R$ #{key}.00" }
  puts 'MOEDAS:'
  coins.each { |key, value| puts "#{value} moeda(s) de R$ #{'%.2f' % key}" }
end

value = gets.strip.to_f
extract_information(value)
