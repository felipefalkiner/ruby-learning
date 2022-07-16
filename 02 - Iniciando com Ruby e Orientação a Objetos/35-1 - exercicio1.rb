class Cachorro

attr_accessor :nome
attr_reader :raca 

def initialize(nome, raca)
	@nome = nome
	@raca = raca
end

def latir(texto = "AU AU AU AU")
	"O Cachorro #{@nome} late: #{texto}"
end

end

cachorro1 = Cachorro.new("Falkitos", "Husky")
#cachorro1.raca("Vira-lata") # - tentativa de mudar um atributo
puts "O nome do cachorro 1 é: " + cachorro1.nome.to_s
puts "A raça do cachorro 1 é: " + cachorro1.raca.to_s
puts cachorro1.latir

cachorro2 = Cachorro.new("Fred", "Golden Retriever")
puts "O nome do cachorro 2 é: " + cachorro2.nome.to_s
puts "A raça do cachorro 2 é: " + cachorro2.raca.to_s
puts cachorro2.latir("AINN AINN")
