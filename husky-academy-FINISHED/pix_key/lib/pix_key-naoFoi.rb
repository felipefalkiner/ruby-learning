# frozen_string_literal: true

class PixKey 
    attr_accessor :key, :value, :type

    # validates :key, presence: true

    def initialize(key)
        key = key.to_s
        @key = key
        @value = key
        @type = getType(@value)

    end

    def getType(value)
        if value[/^[0-9]{11}$/]
            "cpf"
            # @valid = "valid"
        elsif  value[/^[0-9]{14}$/]
            "cnpj"
            # @valid = true
        elsif  value[/^\+[1-9][0-9]\d{1,14}$/]
            "phone"
            # @valid = true
        elsif  value[/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/]
            "email"
        elsif  value[/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}/]
           "evp"
        else
            ""
        end

    end

end

pix = PixKey.new("felipe.magosso@gmail.com")

puts "Chave " + pix.key
puts "Valor " + pix.value
puts "Tipo " + pix.type