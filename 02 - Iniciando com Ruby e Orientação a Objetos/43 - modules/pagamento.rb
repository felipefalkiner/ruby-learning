module Pagamento
	
	# PI = 3.14
	
	def pagar(bandeira, numero, valor)
		"Pagando com o cartão #{bandeira}, Número #{numero} o Valor #{valor}"
	end
	
	class Visa
		def pagando
			"pagando..."
		end
	end
	
end