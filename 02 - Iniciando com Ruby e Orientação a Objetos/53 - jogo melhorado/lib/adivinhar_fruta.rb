require_relative 'inicializacao'


class AdivinharFruta
	attr_reader :fruta, :acabou, :frutas
	
	def initialize
		Inicializacao.inicializacao
		@frutas = ["maça", "banana", "laranja", "abacate", "uva", "goiaba"]
		@fruta = @frutas[Random.rand(0..5)]
		@acabou = false
		@tentativas = 0
	end
	
	def guess(fruta = "")
		if (fruta.downcase == @fruta)
			@acabou = true
			return "Você acertou a fruta #{@fruta}"
		elsif (@tentativas == 2)
			@acabou = true
			return "Suas tentativas acabaram, a fruta correta era #{@fruta}!"
		elsif
			@tentativas = @tentativas + 1
			return "Você errou, restam #{3 - @tentativas} tentativas"
		end
	end
end
