require_relative 'start'
require_relative 'draw'
require_relative 'try-maker'
require_relative 'dictionary'

include Draw
include TryMaker
include Dictionary

class Forca
    attr_reader :palavra, :erros, :acabou, :tentativa, :palavraArray, :tentativaArray

    def initialize
        Start.start
        @palavra = randomWord
        @palavraArray = @palavra.split("")
        @tentativa = generateTry(@palavra)
        @tentativaArray = @tentativa.split("")
        @erros = 0
        @acabou = false
        draw(erros)
    end

    def rebuildTry
        @tentativa = tentativaArray.join
        if (@tentativa == @palavra)
            @acabou = true
            draw(erros)
            puts "Você acertou a palavra #{@palavra}! Parabéns!"
        end
    end

    def sucess(letraInput)
        draw(erros)
        i = 0
        for letra in palavraArray
            if (letraInput == letra)
                tentativaArray[i] = letraInput
            end
            i = i + 1
        end
        return rebuildTry
        puts "A letra \"#{letraInput}\" existe na palavra!"
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
            return addErrors(0, "Por favor, digite algo...")
        end
        
        if (erros != 6)
            # puts "ponto 1"

            if (entrada.length == 1)
                # puts "ponto 2 - o tamanho é #{entrada.length} e o #{@palavra.include? entrada}"
                if (@palavra.include? entrada)
                    if (@tentativa.include? entrada)
                        draw(erros)
                        puts "Você já digitou essa letra!"
                    else
                        sucess(entrada)
                    end
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