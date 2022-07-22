class Start
    def self.start
        system("cls")

        # File.open(File.expand_path('../../ascii/falk.txt', __FILE__), 'r') do |arq|
        #     while line = arq.gets
        #         puts line.to_s
        #     end
        # end

        
        print "Inicializando."
        3.times do |i|
            # sleep 1
            print "."
        end
        sleep 1
        puts "."
        system("cls")
    end
end