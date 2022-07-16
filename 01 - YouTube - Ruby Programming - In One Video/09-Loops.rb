# WHILE LOOPS

index = 1
while index <= 5
    puts index
    index +=1
end

puts "COMEÇO DOS FOR LOOPS"
puts "------------------"

# ----------------

# FOR LOOPS

for index in 0..5
    puts index
end

puts "------------------"

5.times do |index|
     puts index
end

puts "------------------"

lucky_nums = [4, 8, 15, 16, 23, 42]
for lucky_num in lucky_nums
  puts lucky_num
end

puts "------------------"

lucky_nums.each do |lucky_num|
  puts lucky_num
end