class Pessoa

attr_accessor :nome, :idade 

def initialize(nome, idade)
	@nome = nome
	@idade = idade
end

def gritar(texto = "AAAAAAAAA")
	"Gritando: #{texto}"
end

def agradecer
	"Fulano agradeceu"
end

end

pessoa1 = Pessoa.new("Felipe Falkiner", 28)
#pessoa1.nome = "Felipe Falkiner"
#pessoa1.idade = 28

pessoa2 = Pessoa.new("Noazin", 29)
# pessoa2.nome = "Noazin"
# pessoa2.idade = 29

puts pessoa1.nome
puts pessoa1.idade

puts pessoa2.nome
puts pessoa2.idade