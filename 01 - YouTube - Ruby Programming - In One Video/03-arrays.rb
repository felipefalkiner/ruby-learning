lucky_numbers = [4 ,8, "quinze", 16, 23, 42.0]
# indexes        0  1     2       3   4   5

lucky_numbers[0] = 90

puts lucky_numbers[0]
puts lucky_numbers[1]
puts lucky_numbers[-1] #faz a array de trás pra frente

puts "\n\n"
puts lucky_numbers[2,3] # começa no index 2 e pega os próximos 3
puts lucky_numbers[2..4] #pega do index 2 ao 4

puts lucky_numbers.length

# ----------------
puts "-------------"

number_grid = [ [1,2], [3,4]]
number_grid[0][0] = 99

puts number_grid[0][0]
puts number_grid[0][1]