# frozen_string_literal: true

class PixKey 
    attr_accessor :key, :value, :type

    # validates :key, presence: true

    def initialize(key)
        key = key.to_s
        @key = key
        
        if key[/^[0-9]{11}$/]
            @value = @key
            @type = "cpf"
            # @valid = "valid"
        elsif  key[/^[0-9]{14}$/]
            @value = @key
            @type = "cnpj"
            # @valid = true
        elsif  key[/^\+[1-9][0-9]\d{1,14}$/]
            @value = @key
            @type = "phone"
            # @valid = true
        elsif  key[/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/]
            @value = @key
            @type = "email"
            # @valid = true
        elsif  key[/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}/]
            @value = @key
            @type = "evp"
            # @valid = true
        else
            @value = ""
            # @valid = false
        end

    end

end

pix = PixKey.new("123e4567-e89b-12d3-a456-426655440000")

puts "Chave " + pix.key
puts "Valor " + pix.value
puts "Tipo " + pix.type
# puts "Valido " + pix.valid.to_s