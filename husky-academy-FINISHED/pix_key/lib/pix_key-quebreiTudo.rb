# frozen_string_literal: true

# metodo da classe - #
# metodo do objeto - .

class PixKey 
    attr_accessor :key, :value, :type

    # validates :key, presence: true

    def initialize(key)
        @key = key.to_s
        @value = @key
        @type = setType(key)
    end

    def setType(key)
        @key = key.to_s
        if key[/^[0-9]{11}$/]
            "cpf"
        elsif  key[/^[0-9]{14}$/]
            "cnpj"
        elsif  key[/^\+[1-9][0-9]\d{1,14}$/]
            "phone"
        elsif  key[/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/]
            "email"
        elsif  key[/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}/]
            "evp"
        else
           ""
        end
    end

   

end

# debug stuff
pix = PixKey.new("felipe.magosso@gmail.com")

puts "Chave " + pix.key
puts "Chave ObjectID " + pix.key.object_id.to_s
puts "Valor " + pix.value
puts "Tipo " + pix.type