class Pessoa
@nome = nil
@idade = nil

# variável de instância = @variavel
# lembrando que instância é única de cada objeto (quando da um new,
# você cria uma nova instância)


def gritar(texto = "AAAAAAAAA")
	"Gritando: #{texto}"
end

def agradecer
	"Fulano agradeceu"
end

def nome=(nome)
	@nome = nome
end

def nome
	@nome
end

def idade=(idade)
	@idade = idade
end

def idade
	@idade
end

end

pessoa1 = Pessoa.new
pessoa1.nome = "Felipe Falkiner"
pessoa1.idade = 28

pessoa2 = Pessoa.new
pessoa2.nome = "Noazin"
pessoa2.idade = 29

puts pessoa1.nome
puts pessoa1.idade

puts pessoa2.nome
puts pessoa2.idade


