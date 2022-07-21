require 'tty-cursor' # TTY = Gems para Terminal

class Inicializacao
    def self.inicializacao
        system("cls")

        cursor = TTY::Cursor

        print cursor.move(30,30)

        File.open(File.expand_path('../../ascii/falk.txt', __FILE__), 'r') do |arq|
            while line = arq.gets
                puts line.to_s
            end
        end

        
        print "Inicializando."
        2.times do |i|
            sleep 1
            print "."
        end
        sleep 1
        puts "."
        system("cls")
    end
end