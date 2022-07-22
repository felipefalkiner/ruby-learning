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
        @erros = 0
        @acabou = false
        system("cls")
        draw(erros)
    end

    def addErrors(i)
        @erros = @erros + i
    end

    def input(entrada = "")

        if (entrada == "")
            return "Por favor digite algo..."
        end

        if (erros != 5)
            puts "ponto 1"
            if (entrada.length == 1)
                puts "ponto 2 - o tamanho é #{entrada.length} e o #{@palavra.include? entrada}"
                if (@palavra.include? entrada)
                    ### código super legal para refazer a palavra
                    puts "ponto 3"
                else
                    puts "ponto 4"
                    addErrors(1)
                    puts erros.to_s
                    system("cls")
                    # sleep(1)
                    draw(erros)
                    puts "VOCÊ ERROU! ESSA LETRA NÃO EXISTE NA PALAVRA!"
                end
            else
                puts "vou implementar"
            end
        else
            addErrors(1)
            system("cls")
            draw(erros)
            @acabou = true
            "Você perdeu! A palavra era #{@palavra}!"
        end

    end

end