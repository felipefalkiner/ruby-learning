# arrays methods

conf = []
conf.push("Falk")
conf.push("Luca")
conf.push("Ju")
conf.push("Bibi")
conf.push("Tei")
conf.push("Bell")
conf.push("Ve")
conf.push("Vitao")
conf.push("Noa")
conf.push("Seype")

puts conf
puts "\n"

puts conf.reverse #inverte a ordem
puts "\n"

puts conf.sort # alfabetica || cuidado quando tem outros tipos de datatype
puts "\n"

puts conf.include? "Falk"

conf.pop #remove o Seype aka último elemento
puts conf