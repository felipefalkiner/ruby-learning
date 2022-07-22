require_relative 'lib/forca'

forca = Forca.new

until forca.acabou do
    puts "Palavra: #{forca.tentativa} (#{forca.tentativa.length} Letras) (Tentativas restantes: #{6 - forca.erros})"
	puts "Digite uma letra ou palavra:"
	entrada = gets.chomp
	puts forca.input(entrada)
end