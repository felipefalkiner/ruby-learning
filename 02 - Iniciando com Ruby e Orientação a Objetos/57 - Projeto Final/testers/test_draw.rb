require_relative '../lib/draw'

include Draw

for erros in 0..6
    system("cls")
    draw(erros)
    puts "--------------"
    sleep(1)
end