class Pessoa

def gritar(texto = "AAAAAAAAA")
	"Gritando: #{texto}"
end

def agradecer
	"Fulano agradeceu"
end

end

pessoa1 = Pessoa.new
result = pessoa1.gritar
puts result
puts pessoa1.gritar("EU TO COM FOME")
puts pessoa1.agradecer

