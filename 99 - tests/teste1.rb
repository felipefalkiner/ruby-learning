key = "felipe.magosso@gmail.com".to_s

# if key[/^[0-9]{11}$/]
#     puts "opa " + key
# else
#     puts "nem foi men"  + key
# end

case key
when key[/^[0-9]{11}$/]
    @value = "cpf"
when key[/^[0-9]{14}$/]
    @value = "CNPJ"
when key[/^\+[1-9][0-9]\d{1,14}$/]
    @value = "PHONE"
when key[/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/]
     @value = "EMAIL"
when key[/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}/]
    @value = "EVP"
else
    false
end