require_relative 'lib/forca'

forca = Forca.new

until forca.acabou do
	puts "Digite uma letra ou palavra"
	entrada = gets.chomp
	puts forca.input(entrada)
end