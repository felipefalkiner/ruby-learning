require_relative 'pagamento' # relative = relativo onde o arquivo está

include Pagamento

# puts PI
# puts Pagamento::PI



puts "Digite a bandeira do cartão"
b = gets.chomp

puts "Digite a número do cartão"
n = gets.chomp

puts "Digite a valor do cartão"
v = gets.chomp

puts pagar(b, n, v) # o include já vai colocar o pagamento dentro

p = Visa.new # ou p = Pagamento::Visa.new
puts p.pagando

=begin

Módulos agem como "namespaces" permitindo que você ddefina métodos cujos nomes não irão colidir com aqueles definidos em oturas partes de um programa.

E

Compartilhar funcionalidade entre classes

=end

