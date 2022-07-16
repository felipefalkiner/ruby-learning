#everything in ruby is an object (or primitives)

class Book
    attr_accessor :title, :author

    def readBook()
        puts "Reading #{self.title} by #{self.author}"
    end
end

book1 = Book.new()
book1.title = "Mais um Rolé Estranho do Falk"
book1.author = "Billsen Tinoks"

book1.readBook();
puts book1.title
