def time_to_string(value)
  hour_in_seconds = 3600
  minute_in_seconds = 60

  hours = value / hour_in_seconds
  value -= (hours * hour_in_seconds) if hours > 0

  minutes = value / minute_in_seconds
  value -= (minutes * 60) if minutes > 0

  "#{hours}:#{minutes}:#{value}"
end

value = gets.strip.to_i
puts time_to_string(value)
