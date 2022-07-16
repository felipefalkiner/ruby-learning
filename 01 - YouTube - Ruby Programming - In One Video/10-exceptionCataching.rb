# EXCEPTION CATCHING

# -----------------

# num = 10/0

# -----------------

# begin
#     num = 10/0
# rescue
#     puts "Error"
# end

# -----------------

# begin
#     puts bad_variable # não existe
#     num = 10/0
# rescue ZeroDivisionError
#     puts "Error"
# rescue
#     puts "Deu tudo errado"
# end

# -----------------

raise "Nem vem tio"