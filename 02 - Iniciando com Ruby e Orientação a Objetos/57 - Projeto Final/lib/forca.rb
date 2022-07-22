require_relative 'start'
require_relative 'draw'
require_relative 'try-maker'

include Draw
include TryMaker

class Forca
    attr_reader :palavra, :erros, :acabou, :tentativa

    def initialize
        Start.start
        @palavra = "banana"
        palavraArray = @palavra.split
        @tentativa = generateTry(@palavra)
        @erros = 0
        @acabou = false
        draw(erros)
    end

    def addErrors(i, mensagem)
        @erros = @erros + i
        draw(erros)
        puts mensagem
        if (@erros == 6)
            @acabou = true
            puts "Você perdeu! A palavra era #{@palavra}!"
        end
    end

    def input(entrada = "")

        if (entrada == "")
            return "Por favor digite algo..."
        end
        
        if (erros != 6)
            puts "ponto 1"

            if (entrada.length == 1)
                puts "ponto 2 - o tamanho é #{entrada.length} e o #{@palavra.include? entrada}"
                if (@palavra.include? entrada)
                    ### código super legal para refazer a palavra
                    puts "ponto 3"
                else
                    addErrors(1, "VOCÊ ERROU! ESSA LETRA NÃO EXISTE NA PALAVRA!")
                end
            else
                if (@palavra == entrada.downcase)
                    @acabou = true
                    draw(erros)
                    "Você acertou a palavra #{@palavra}! Parabéns!"
                else
                    addErrors(1, "VOCÊ ERROU! ESSA NÃO É A PALAVRA!")
                end
            end
        end

    end

end