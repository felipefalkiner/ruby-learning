require_relative 'lib/forca'

forca = Forca.new

until forca.acabou do
    puts "Palavra: #{forca.tentativa}"
	puts "Digite uma letra ou palavra: #{forca.erros}"
	entrada = gets.chomp
	puts forca.input(entrada)
end