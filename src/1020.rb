def age_to_string(value)
  year_in_days = 365
  month_in_days = 30

  years = value / year_in_days
  value -= (years * year_in_days) if years > 0

  months = value / month_in_days
  value -= (months * month_in_days) if months > 0

  puts "#{years} ano(s)", "#{months} mes(es)", "#{value} dia(s)"
end

value = gets.strip.to_i
age_to_string(value)
