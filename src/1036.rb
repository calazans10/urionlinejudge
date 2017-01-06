a, b, c = gets.strip.split(' ').map(&:to_f)
delta = (b**2) - (4 * a * c)
divisor = 2 * a

if delta < 0 || divisor.zero?
  puts 'Impossivel calcular'
else
  delta = Math.sqrt(delta)
  r1 = (-b + delta) / divisor
  r2 = (-b - delta) / divisor
  puts "R1 = #{r1.round(5)}"
  puts "R2 = #{r2.round(5)}"
end
