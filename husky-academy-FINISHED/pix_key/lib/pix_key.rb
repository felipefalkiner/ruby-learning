# frozen_string_literal: true

class PixKey 
    attr_accessor :key
    
    def initialize(key)
        @key = key.to_s.strip.freeze
    end

    def ==(o)
        o.class == self.class && o.key == key
      end

    def to_s()
        key
    end

    def valid?()
        type != "" ? true : false
    end

    def invalid?()
        type == "" ? true : false
    end

    def value()
        type == "" ? "" : key
    end

    def type()
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

    def phone?()
        type == "phone" ? true : false
    end

    def cpf?()
        type == "cpf" ? true : false
    end

    def email?()
        type == "email" ? true : false
    end

    def cnpj?()
        type == "cnpj" ? true : false
    end

    def evp?()
        type == "evp" ? true : false
    end


    
end


pix = PixKey.new("123e4567-e89b-12d3-a456-426655440000")
pix2 = PixKey.new("123e4567-e89b-12d3-a456-426655440000")

