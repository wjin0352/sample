# Write a program that prints the sum of numbers from 1 to 1000, make sure total is declared to 0
# outside the loop or you will set it to 0 every iteration!

total = 0

for i in 1..1000
  total += total + i
end

puts "the total sum of 1 - 1000 is #{total}."

