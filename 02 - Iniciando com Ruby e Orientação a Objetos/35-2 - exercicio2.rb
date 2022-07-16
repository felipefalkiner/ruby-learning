class Papagaio

attr_accessor :nome, :idade

def initialize(nome, idade)
	@nome = nome
	@idade = idade
end

def repetir_frase(frase = "curupaco")
	"O Papagio #{@nome} diz: #{frase}"
end

end

papagaio1 = Papagaio.new("Falkitos", 5)
puts "O nome do papagaio 1 é: " + papagaio1.nome.to_s
puts "A idade do papagaio 1 é: " + papagaio1.idade.to_s
puts papagaio1.repetir_frase

papagaio2 = Papagaio.new("Fred", 12)
puts "O nome do papagaio 2 é: " + papagaio2.nome.to_s
puts "A idade do papagaio 2 é: " + papagaio2.idade.to_s
puts papagaio2.repetir_frase("Faz os commit, faz os commit")
