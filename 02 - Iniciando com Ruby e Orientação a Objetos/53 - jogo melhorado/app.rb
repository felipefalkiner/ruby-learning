require_relative 'lib/adivinhar_fruta'

jogo = AdivinharFruta.new

until jogo.acabou do
	puts "Adivinhe a Fruta (maça, banana, laranja, abacate, uva, goiaba):"
	fruta = gets.chomp
	puts jogo.guess(fruta)
end