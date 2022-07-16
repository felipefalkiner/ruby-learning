# CONSTRUCTORS

class Book
    attr_accessor :title, :author
    def initialize(title, author)
        @title = title
        @author = author
    end

    def readBook()
        puts "Reading #{self.title} by #{@author}"
    end
end

book1 = Book.new("Mais um Rolé Estranho do Falk", "Billsen Tinoks")
# book1.title = "Rolé Estranho em SP"

puts book1.title