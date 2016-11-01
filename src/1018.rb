def extract_information(number)
  original_number = number
  notes = {100 => 0, 50 => 0, 20 => 0, 10 => 0, 5 => 0, 2 => 0, 1 => 0}

  notes.each do |key, value|
    result = number / key

    if result > 0
      notes[key] += result
      number -= result * key
    end
  end

  puts original_number
  notes.each { |key, value| puts "#{value} nota(s) de R$ #{key},00" }
end

value = gets.strip.to_i
extract_information(value)
