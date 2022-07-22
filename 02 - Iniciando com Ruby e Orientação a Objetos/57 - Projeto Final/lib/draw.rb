module Draw

    def draw(erros)
    File.open(File.expand_path("../../ascii/#{erros}.txt", __FILE__), 'r') do |arq|
        while line = arq.gets
            puts line.to_s
        end
    end
end

end