# GETTERS AND SETTERS

class Book
    attr_accessor :title, :author
    def initialize(title, author)
        @self.title = title
        @author = author
    end

    def title=(title)
        puts "Set"
        @title = title
    end
    def title
        puts "Get"
        return @title
    end
end

book1 = Book.new("Mais um Rolé Estranho do Falk", "Billsen Tinoks")

puts book1.title

