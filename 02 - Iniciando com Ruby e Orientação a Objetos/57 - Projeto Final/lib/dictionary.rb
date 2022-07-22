module Dictionary

    def randomWord
        File.readlines(File.expand_path("../../palavras.txt", __FILE__)).sample.chomp
    end

end