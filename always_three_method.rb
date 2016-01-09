def always_three(number)
  (((number + 5) * 2 - 4) / 2 - number).to_s
end

print "Give me a number.\n"
  first_number = gets.to_i

puts "Always " + always_three(first_number).to_s
