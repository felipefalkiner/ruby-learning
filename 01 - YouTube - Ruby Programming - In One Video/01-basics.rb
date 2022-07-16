puts "Salve" # no new line no print
print "meu deus" # new line
puts "!!!!"

# -------------

name = "Felipe Falkiner"
age = 28

puts "Meu nome é #{name}"
puts "Minha idade é " + age.to_s #cast para outro formato

# .to_i to integer
# .to_f to float
# .to_s to string

# -------------- 
puts "================="

stringzinha = "Hello"
#indexes:      01234

puts stringzinha.length
puts stringzinha[0]
puts stringzinha.include? "llo"
puts stringzinha.include? "z"
puts stringzinha[1,3]

# -------------- 
puts "=====NUMEROS====="

puts 2 * 3
puts 2 ** 4 # potencia
puts (1 + 2) * 3 #ordem das operações
puts 10 / 3.0 # int / int vc recebe int se vc faz int / decimal você recebe decimal
puts 10 % 3 # resto da divisão

num = 10
num += 100 # adiciona 100
puts num

num = -36.8
puts num.abs()
puts num.round()

# Math Class has useful math methods
puts Math.sqrt(144) # raiz quadrada
puts Math.log(0)