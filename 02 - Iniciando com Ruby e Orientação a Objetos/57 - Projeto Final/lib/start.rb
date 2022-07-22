class Start
    def self.start
        system("cls")
        print "Inicializando."
        3.times do |i|
            sleep 1
            print "."
        end
        sleep 1
        puts "."
        system("cls")
    end
end