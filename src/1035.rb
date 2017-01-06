def extract_information(a, b, c, d)
  if (b > c && d > a && (c + d) > (a + b) && (c > 0 && d > 0) && a % 2 == 0)
    return 'Valores aceitos'
  else
    return 'Valores nao aceitos'
  end
end


a, b, c, d = gets.strip.split(' ').map(&:to_i)
puts extract_information(a, b, c, d)
