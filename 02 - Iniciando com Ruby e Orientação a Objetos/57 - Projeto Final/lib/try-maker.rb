module TryMaker

    def generateTry(palavra)
        try = ""
        repeat = palavra.length
        repeat.times do |i|
            try += "_"
        end
        return try
    end
end